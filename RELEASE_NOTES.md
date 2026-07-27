# Release Notes

## 1.0.0-alpha.1

First release of SwiftTube as a standalone package, de-vendored out of the brightdigit.com
monorepo. The client is now generated from an OpenAPI description of the YouTube Data API v3
rather than hand-written, which renames several public types — consumers updating from
`0.2.0-beta.5` should expect source changes around the Videos types.

### Library
* Rebuild on OpenAPI generator + Swift 6.4 multi-platform CI (client generated from `OpenAPI/openapi.yaml` via swift-openapi-generator, on swift-openapi-runtime and swift-openapi-urlsession) by @leogdion in https://github.com/brightdigit/SwiftTube/pull/13
* V1.0.0 (de-vendored into a standalone package on `swift-tools-version:6.4` with complete strict concurrency) by @leogdion in https://github.com/brightdigit/SwiftTube/pull/16

### Documentation
* Add unified badge header and DocC catalog by @leogdion in https://github.com/brightdigit/SwiftTube/pull/21
* Wave 0 review feedback: CI hygiene, docs & agent tooling by @leogdion in https://github.com/brightdigit/SwiftTube/pull/19

### Tooling & CI
* Add `Scripts/discovery-to-openapi.mjs` and `Scripts/generate-openapi-swifttube.sh` to regenerate the API description and client by @leogdion in https://github.com/brightdigit/SwiftTube/pull/13
* Move linting to mise with `.mise.toml`, `.swift-format`, `.swiftlint.yml`, and `Scripts/lint.sh` by @leogdion in https://github.com/brightdigit/SwiftTube/pull/16
* Adopt the shared multi-platform CI template plus `check-unsafe-flags`, `swift-source-compat`, and `cleanup-caches` workflows by @leogdion in https://github.com/brightdigit/SwiftTube/pull/16
* Sync subrepo branch brightdigit-com-260621 by @leogdion in https://github.com/brightdigit/SwiftTube/pull/18
* Add Claude Code GitHub Workflow by @leogdion in https://github.com/brightdigit/SwiftTube/pull/14
* Drop the stale ENABLE_WATCHOS comment from the CI workflow by @leogdion in https://github.com/brightdigit/SwiftTube/pull/23

**Full Changelog**: https://github.com/brightdigit/SwiftTube/compare/0.2.0-beta.5...1.0.0-alpha.1
