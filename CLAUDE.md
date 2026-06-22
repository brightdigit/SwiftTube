# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

SwiftTube is a small, focused async Swift client over a **filtered slice** of the YouTube Data API v3. It is not a full API wrapper — it intentionally exposes only the two operations the brightdigit.com podcast importer needs: `playlistItems.list` (paged) and `videos.list` (batched by id). The public surface is essentially `YouTubeClient.videos(forPlaylistID:)` returning `[YouTubeVideo]`.

## Commands

Tooling (swift-format, SwiftLint, periphery, swift-openapi-generator) is managed by **mise**, not SwiftPM. Run `mise install` first.

- **Build:** `swift build`
- **Build with tests:** `swift build --build-tests`
- **Test:** `swift test`
- **Single test:** `swift test --filter SwiftTubeTests.YouTubeClientTests/followsPaginationAndBatchesVideos`
- **Lint + format + build + periphery (local autofix):** `./Scripts/lint.sh`
- **Lint strict (CI behavior, no autofix):** `LINT_MODE=STRICT CI=1 ./Scripts/lint.sh`
- **Format only:** `FORMAT_ONLY=1 ./Scripts/lint.sh`

`lint.sh` runs swift-format and `swiftlint --fix` only when not in CI (`$CI` unset). In CI it lints in `--strict` mode and runs `swift build --build-tests`. `Scripts/header.sh` (license-header rewrite) and `periphery scan` run **local-only**.

## Code generation (important)

`Sources/SwiftTube/Generated/{Client,Types}.swift` are **committed, ahead-of-time generated** output. swift-openapi-generator is a **mise-managed CLI tool, NOT a SwiftPM build/command plugin** — there is no plugin step at build time.

- **Regenerate:** `mise run generate-openapi` (= `Scripts/generate-openapi-swifttube.sh`)
- **Re-fetch + convert the upstream spec first:** `Scripts/generate-openapi-swifttube.sh --refresh` (pulls the Google Discovery doc → OpenAPI via `Scripts/discovery-to-openapi.mjs`)
- **Drift check (CI-style):** `Scripts/generate-openapi-swifttube.sh --check`

Inputs live under `openapi/`: `youtube-openapi.json` (full ~80-operation spec) and `openapi-generator-config.yaml`. The config's `filter:` key reduces the spec to just `listPlaylistItems` and `listVideos` (and their transitive schemas) — the generator honors `filter:` directly, so there is no separate filter pre-pass. To add an operation, add it to that `filter:` list and regenerate. Keep the generator version in `.mise.toml` in sync with the `GENERATOR` pin in the generate script.

Generated files carry `periphery:ignore:all` and `swift-format-ignore-file` markers; SwiftLint excludes them via a path rule in `.swiftlint.yml` (it can't be suppressed in-file).

## Architecture

Three hand-written files wrap the generated client:

- **`YouTubeClient.swift`** — the public `struct YouTubeClient: Sendable`. Wraps the generated `Client`. `videos(forPlaylistID:)` follows playlist pagination to collect video ids (`playlistVideoIDs`), chunks them into batches of `batchSize` (50 — the API's per-request id limit), then fetches batches **concurrently via `withThrowingTaskGroup`, reassembling them in batch order** so output is deterministic. API key and field-selector strings are injected on every query. Non-200 / undocumented responses throw `ClientError.invalidResponse` (unwrapping happens in the private `okJSON` helpers).
- **`YouTubeVideo.swift`** — flat, all-optional, `Sendable`/`Equatable` value type mapped from the generated `Components.Schemas.Video`. Intentionally non-throwing: presence validation is the caller's job.
- **`Array+Chunked.swift`** — `chunked(by:)` batching helper.

Three initializers on `YouTubeClient`: `init(apiKey:transport:)` (explicit transport), `init(apiKey:)` (default `URLSessionTransport`, **gated behind `#if !os(WASI)`**), and `init(apiKey:client:)` (inject a pre-built generated `Client` — used by tests).

### WASI / platform gating

`OpenAPIURLSession` does not build for wasm/wasm-embedded. The dependency is scoped to `Platform.withoutWASI` in `Package.swift`, and any URLSession-using code is wrapped in `#if !os(WASI)`. When adding code that touches URLSession, preserve this guard or the wasm CI legs break. WASI callers must pass an explicit transport.

## Tests

Swift Testing (`@Suite` / `@Test` / `#expect`), not XCTest. Tests inject a **`MockTransport`** (`Tests/SwiftTubeTests/MockTransport.swift`) that replays JSON fixtures (`Fixtures.swift`) keyed by request path, into the generated `Client` via `init(apiKey:client:)`. This is why `swift-http-types` is a direct test dependency — the mock transport names `HTTPRequest`/`HTTPResponse`.

## CI

`.github/workflows/SwiftTube.yml` is the shared BrightDigit Swift 6.4 template: Linux (+ wasm/wasm-embedded), macOS, Windows, Android, and the Apple-platform simulator suite (iOS/watchOS/tvOS), plus a lint job. Matrix scope is tiered by branch/event (small set always; full matrix + Windows on main/semver/dispatch/PRs into main). wasm and watchOS legs are gated by the `ENABLE_WASM` / `ENABLE_WATCHOS` repo variables; wasm/embedded are build-only. Skip CI with `ci skip` in the commit message.

Three smaller workflows are adapted from brightdigit/MistKit:
- `check-unsafe-flags.yml` — fails if `swift package dump-package` reports any `unsafeFlags`. **Note:** it must run in the `swiftlang/swift:nightly-6.4.x-noble` container (not `swift:latest`), because the `swift-tools-version:6.4` manifest can't be parsed by older toolchains. Keep this container in sync with the Linux leg of `SwiftTube.yml`.
- `cleanup-caches.yml` — deletes Actions caches for a branch when it's deleted (version-agnostic).
- `swift-source-compat.yml` — `swift build -c release` for source compatibility. MistKit's version matrixes released toolchains (`swift:6.1–6.3`), but none can parse the 6.4 manifest, so this build was **inverted**: it tests the current `nightly-6.4.x-noble` branch (blocking) and the `nightly-main-noble` development trunk (`continue-on-error` — an informational early-warning leg for forthcoming-Swift breakage). Keep the 6.4 container in sync with the Linux leg of `SwiftTube.yml`.

(MistKit's `codeql.yml` was intentionally **not** added: it builds with a toolchain older than 6.4 — GitHub-hosted `macos-26`/`Xcode_26.4` — which cannot parse the 6.4 manifest. CodeQL's Swift analysis is macOS-only and can't run in the nightly-6.4 Linux container the other workflows use.)

## Conventions

- Swift 6.4 toolchain, strict concurrency; public types are `Sendable`.
- swift-format config in `.swift-format`, SwiftLint in `.swiftlint.yml`. Both run `--strict` in CI — formatting/lint failures fail the build.
- Suppressions are explicit and paired: `// swift-format-ignore: NeverForceUnwrap` alongside `// swiftlint:disable:this force_unwrapping` for the one intentional force-unwrap (`serverURL`).
