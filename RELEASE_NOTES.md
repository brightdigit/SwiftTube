# Release Notes

## Unreleased

### Changed
- Rebuilt the YouTube Data API client on **Swift OpenAPI Generator**. The
  package now generates its client and types from an OpenAPI spec
  (`openapi.yaml`, derived from the YouTube Discovery document under
  `openapi/`) via `OpenAPIRuntime` + `OpenAPIURLSession`, replacing the
  previous SwagGen-generated `Models/` and hand-written request types.
- Migrated the package to the BrightDigit Swift 6.4 CI template
  (`.github/workflows/SwiftTube.yml`): Ubuntu/wasm, macOS, Windows, the Apple
  platform suite, and Android, plus `swift-build@v1`, mise-based linting, and
  Codecov coverage upload.
- Added generation tooling under `Scripts/` (`discovery-to-openapi.mjs`,
  `generate-openapi-swifttube.sh`) and `openapi/openapi-generator-config.yaml`.
- Refreshed repository tooling and config: `.devcontainer`, `.mise.toml`,
  `.swiftlint.yml`, `.swift-format`, `.swiftformat`, `codecov.yml`,
  `Package.swift` / `Package.resolved`, and `CLAUDE.md`.
