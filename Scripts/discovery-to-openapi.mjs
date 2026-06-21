#!/usr/bin/env node
// Converts a Google API Discovery Document into a clean OpenAPI 3.x document
// that swift-openapi-generator can parse.
//
// Pipeline:
//   1. google-discovery-to-swagger : Discovery → Swagger 2.0
//   2. swagger2openapi             : Swagger 2.0 → OpenAPI 3.0
//   3. local post-processing       : strip OAuth security (the importer uses an
//      API key query param), normalise `*/*` response bodies to
//      `application/json`, and rename the verbose dotted operationIds (e.g.
//      `youtube.playlistItems.list`) to the short names the hand-written
//      wrapper + filter config use.
//
// Usage: node discovery-to-openapi.mjs <discovery.json> <out-openapi.json>
//
// operationId renames are passed via OPENAPI_RENAME as a JSON object, e.g.
//   OPENAPI_RENAME='{"youtube.playlistItems.list":"listPlaylistItems"}'
// Only Google-discovery-derived specs (YouTube) need this script; specs that
// already ship as OpenAPI 3.x (Buttondown) are committed directly.

import { readFileSync, writeFileSync } from "node:fs";
import { createRequire } from "node:module";

const require = createRequire(import.meta.url);
const discoveryToSwagger = require("google-discovery-to-swagger");
const swagger2openapi = require("swagger2openapi");

const [, , inPath, outPath] = process.argv;
if (!inPath || !outPath) {
  console.error("usage: discovery-to-openapi.mjs <discovery.json> <out.json>");
  process.exit(2);
}

const renames = JSON.parse(process.env.OPENAPI_RENAME ?? "{}");

const discovery = JSON.parse(readFileSync(inPath, "utf8"));
const swagger = discoveryToSwagger.convert(discovery);

swagger2openapi.convertObj(
  swagger,
  { patch: true, warnOnly: true },
  (err, options) => {
    if (err) {
      console.error("swagger2openapi failed:", err);
      process.exit(1);
    }
    const doc = options.openapi;

    // Strip OAuth security — the importer authenticates with an API key query
    // parameter, and the generator rejects security requirements whose schemes
    // the filter does not pull into components.
    for (const methods of Object.values(doc.paths)) {
      for (const op of Object.values(methods)) {
        if (op && typeof op === "object" && op.security) {
          delete op.security;
        }
        if (op && typeof op === "object" && renames[op.operationId]) {
          op.operationId = renames[op.operationId];
        }
      }
    }
    delete doc.security;
    if (doc.components) {
      delete doc.components.securitySchemes;
    }

    // Normalise wildcard response content types to application/json so the
    // generator emits typed, decodable response bodies.
    const normaliseContent = (node) => {
      if (Array.isArray(node)) {
        node.forEach(normaliseContent);
        return;
      }
      if (node && typeof node === "object") {
        for (const [key, value] of Object.entries(node)) {
          if (key === "content" && value && value["*/*"]) {
            value["application/json"] = value["*/*"];
            delete value["*/*"];
          }
          normaliseContent(value);
        }
      }
    };
    normaliseContent(doc.paths);

    writeFileSync(outPath, JSON.stringify(doc, null, 2) + "\n");
    const opCount = Object.values(doc.paths).reduce(
      (n, methods) =>
        n +
        Object.values(methods).filter(
          (op) => op && typeof op === "object" && op.operationId
        ).length,
      0
    );
    console.log(`Wrote ${outPath} (${opCount} operations).`);
  }
);
