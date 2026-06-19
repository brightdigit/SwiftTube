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
        .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession")
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
