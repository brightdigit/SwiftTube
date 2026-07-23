// swift-tools-version:6.4
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "SwiftTube",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(name: "SwiftTube", targets: ["SwiftTube"])
  ],
  dependencies: [
    // Runtime only — swift-openapi-generator is a mise-managed CLI tool
    // (see .mise.toml / Scripts/generate-openapi-swifttube.sh), NOT a package dependency
    // or build/command plugin. Generated code is committed under
    // Sources/SwiftTube/Generated.
    .package(
      url: "https://github.com/apple/swift-openapi-runtime",
      from: "1.8.0"
    ),
    .package(
      url: "https://github.com/apple/swift-openapi-urlsession",
      from: "1.0.0"
    ),
    // Transitive via swift-openapi-runtime; declared explicitly so the
    // contract tests can name HTTPRequest/HTTPResponse in their mock transport.
    .package(
      url: "https://github.com/apple/swift-http-types",
      from: "1.0.0"
    )
  ],
  targets: [
    .target(
      name: "SwiftTube",
      dependencies: [
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        // URLSession transport is unavailable on WASI; exclude it there so the
        // wasm / wasm-embedded builds link. Mirrors brightdigit/MistKit.
        .product(
          name: "OpenAPIURLSession",
          package: "swift-openapi-urlsession",
          condition: .when(platforms: Platform.withoutWASI)
        )
      ]
    ),
    .testTarget(
      name: "SwiftTubeTests",
      dependencies: [
        "SwiftTube",
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        .product(name: "HTTPTypes", package: "swift-http-types")
      ]
    )
  ]
)

// All platforms except WASI. OpenAPIURLSession (URLSession transport) doesn't
// build for wasm/wasm-embedded, so URLSession-backed dependencies are scoped to
// these platforms. Mirrors brightdigit/MistKit.
extension Platform {
  static let withoutWASI: [Platform] = [
    .macOS, .macCatalyst, .iOS, .tvOS, .watchOS, .visionOS, .driverKit, .linux, .windows, .android
  ]
}
