#!/bin/bash
#
# Regenerates the committed swift-openapi-generator output for SwiftTube. Run
# AHEAD OF TIME; the generated Client.swift/Types.swift are committed to the repo
# (the generator is a mise-managed CLI tool, not a SwiftPM build/command plugin).
#
# Usage (from the package root):
#   Scripts/generate-openapi-swifttube.sh            # generate
#   Scripts/generate-openapi-swifttube.sh --refresh  # re-fetch + convert spec first
#   Scripts/generate-openapi-swifttube.sh --check     # regenerate to a temp dir and diff
#
# Layout (relative to the package root):
#   openapi/youtube-openapi.json           full committed OpenAPI document
#   openapi/openapi-generator-config.yaml  generate config (types + client +
#                                          inline `filter:` of the operations we use)
#   Sources/SwiftTube/Generated/           committed output
#
# `swift-openapi-generator generate` honors the `filter:` key in the config, so
# the full spec is passed straight to `generate` (no separate filter pre-pass).

set -euo pipefail

# Package root (this script lives in <package>/Scripts).
PKG="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# swift-openapi-generator version — keep in sync with .mise.toml.
GENERATOR="spm:apple/swift-openapi-generator@1.12.2"

mode="${1:-}"

# Full OpenAPI document committed under openapi/.
SPEC="$PKG/openapi/youtube-openapi.json"
# Optional --refresh inputs: a Google Discovery Document → OpenAPI.
DISCOVERY_URL='https://youtube.googleapis.com/$discovery/rest?version=v3'
DISCOVERY="$PKG/openapi/youtube-discovery.json"
RENAME='{"youtube.playlistItems.list":"listPlaylistItems","youtube.videos.list":"listVideos"}'

GEN_CONFIG="$PKG/openapi/openapi-generator-config.yaml"
OUT_DIR="$PKG/Sources/SwiftTube/Generated"

run_generator() {
  command mise exec "$GENERATOR" -- swift-openapi-generator "$@"
}

# ---- Optional: refresh the full spec from the upstream discovery document -----
if [ "$mode" = "--refresh" ]; then
  echo "Refreshing SwiftTube spec from upstream discovery document..."
  curl -fsSL "$DISCOVERY_URL" -o "$DISCOVERY"
  # The converters are dev-only; install them on demand into a temp prefix.
  CONV_DIR="$(mktemp -d -t openapi-conv.XXXXXX)"
  ( cd "$CONV_DIR" && npm install --silent --no-save \
      google-discovery-to-swagger swagger2openapi )
  NODE_PATH="$CONV_DIR/node_modules" \
    OPENAPI_RENAME="$RENAME" node "$PKG/Scripts/discovery-to-openapi.mjs" \
    "$DISCOVERY" "$SPEC"
  rm -rf "$CONV_DIR"
fi

# ---- Generate -----------------------------------------------------------------
# The generator filters the full spec down to the operations we use via the
# `filter:` key in $GEN_CONFIG, so the full $SPEC is passed straight to generate.
if [ "$mode" = "--check" ]; then
  TMP_OUT="$(mktemp -d -t openapi-gen.XXXXXX)"
  trap 'rm -rf "$TMP_OUT"' EXIT
  echo "Generating SwiftTube client into a temp dir for drift check..."
  run_generator generate --config "$GEN_CONFIG" --output-directory "$TMP_OUT" "$SPEC"
  if ! diff -ru "$OUT_DIR" "$TMP_OUT"; then
    echo "ERROR: committed generated code is out of date." >&2
    echo "Run Scripts/generate-openapi-swifttube.sh and commit the result." >&2
    exit 1
  fi
  echo "Generated code is up to date."
  exit 0
fi

echo "Generating SwiftTube client into $OUT_DIR..."
mkdir -p "$OUT_DIR"
run_generator generate --config "$GEN_CONFIG" --output-directory "$OUT_DIR" "$SPEC"
echo "Done. Review and commit $OUT_DIR/{Client,Types}.swift."
