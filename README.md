<p align="center">
    <img alt="SwiftTube" title="SwiftTube" src="Sources/SwiftTube/SwiftTube.docc/Resources/logo-transparent.svg" height="200">
</p>

# SwiftTube

<p align="center">A lightweight <code>async</code>/<code>await</code> Swift client for a focused slice of the YouTube Data API v3.</p>

<!-- Platform Compatibility -->
[![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FSwiftTube%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/brightdigit/SwiftTube)
[![Platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FSwiftTube%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/brightdigit/SwiftTube)

<!-- Documentation & License -->
[![Documentation](https://img.shields.io/badge/docc-read_documentation-blue)](https://swiftpackageindex.com/brightdigit/SwiftTube/documentation)
[![License](https://img.shields.io/github/license/brightdigit/SwiftTube)](LICENSE)

<!-- CI/CD & Code Quality -->
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/brightdigit/SwiftTube/SwiftTube.yml?label=actions&logo=github&branch=main)](https://github.com/brightdigit/SwiftTube/actions)
[![Maintainability](https://qlty.sh/gh/brightdigit/projects/SwiftTube/maintainability.svg)](https://qlty.sh/gh/brightdigit/projects/SwiftTube)
[![Codecov](https://img.shields.io/codecov/c/github/brightdigit/SwiftTube)](https://codecov.io/gh/brightdigit/SwiftTube)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/brightdigit/SwiftTube)](https://www.codefactor.io/repository/github/brightdigit/SwiftTube)

---

A lightweight, `async`/`await` Swift client for a focused slice of the [YouTube Data API v3](https://developers.google.com/youtube/v3), built on Apple's [swift-openapi-generator](https://github.com/apple/swift-openapi-generator).

SwiftTube is intentionally small. Rather than wrapping all ~80 YouTube operations, it exposes only what's needed to enumerate the videos in a playlist: it follows `playlistItems.list` pagination, then fetches `videos.list` details in batches. The generated OpenAPI client is filtered to just those two operations and committed to the repo, so there is no codegen step at build time.

## Requirements

- Swift 6.4+
- macOS 13+, iOS 16+, tvOS 16+, watchOS 9+ (also builds for Linux, Windows, Android, and WASI)
- A [YouTube Data API key](https://developers.google.com/youtube/registering_an_application)

## Installation

Add SwiftTube as a Swift Package Manager dependency:

```swift
dependencies: [
  .package(url: "https://github.com/brightdigit/SwiftTube.git", from: "0.2.0")
],
targets: [
  .target(
    name: "YourTarget",
    dependencies: ["SwiftTube"]
  )
]
```

## Usage

Create a `YouTubeClient` with your API key and ask for the videos in a playlist:

```swift
import SwiftTube

let client = YouTubeClient(apiKey: "YOUR_API_KEY")

let videos = try await client.videos(forPlaylistID: "PLxxxxxxxx")

for video in videos {
  print(video.title ?? "Untitled", video.duration ?? "")
}
```

`videos(forPlaylistID:)` transparently follows playlist pagination to collect every video id, then fetches the video details in concurrent batches of 50 (the API's per-request id limit).

### `Video`

Each result is a flat, `Sendable`/`Equatable` value mapped from the API response. Every field is optional — presence validation is left to the caller, so the type never throws:

```swift
public struct Video: Equatable, Sendable {
  public let id: String?
  public let title: String?
  public let description: String?
  public let publishedAt: Date?          // decoded from the API's ISO 8601 date-time
  public let duration: String?           // ISO 8601 duration, e.g. "PT1H2M3S"
  public let standardThumbnailURL: String?
}
```

### Errors

Any non-200 / undocumented response surfaces as:

```swift
public enum ClientError: Error, Equatable, Sendable {
  case invalidResponse
}
```

### Custom transports

The default initializer uses `URLSessionTransport`. On platforms where URLSession is unavailable (WASI), or when you want to inject a custom [`ClientTransport`](https://swiftpackageindex.com/apple/swift-openapi-runtime/documentation/openapiruntime/clienttransport), pass one explicitly:

```swift
let client = YouTubeClient(apiKey: "YOUR_API_KEY", transport: myTransport)
```

## Regenerating the OpenAPI client

The generated `Client.swift` / `Types.swift` under `Sources/SwiftTube/Generated` are committed ahead of time. The generator runs as a [mise](https://mise.jdx.dev)-managed CLI tool — **not** a SwiftPM build/command plugin.

```bash
mise install                                      # install pinned tooling
mise run generate-openapi                         # regenerate from the committed spec
Scripts/generate-openapi-swifttube.sh --refresh   # re-fetch + convert the upstream spec first
Scripts/generate-openapi-swifttube.sh --check     # verify the committed output is up to date
```

The set of generated operations is controlled by the `filter:` key in `openapi/openapi-generator-config.yaml`. To expose a new endpoint, add its operation id there and regenerate.

## Development

```bash
swift build                # build
swift test                 # run the test suite (Swift Testing + a mock transport)
./Scripts/lint.sh          # swift-format, SwiftLint, periphery, build
```

## License

SwiftTube is available under the MIT license. See [LICENSE](LICENSE) for details.
