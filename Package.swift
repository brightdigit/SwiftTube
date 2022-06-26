// swift-tools-version:5.2.0
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "SwiftTube",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v10),
    .tvOS(.v10),
    .watchOS(.v3)
  ],
  products: [
    .library(name: "SwiftTube", targets: ["SwiftTube"])
  ],
  dependencies: [
    .package(url: "https://github.com/shibapm/Komondor", from: "1.1.1"), // dev
    .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.47.0"), // dev
    .package(url: "https://github.com/realm/SwiftLint", from: "0.41.0"), // dev
    .package(url: "https://github.com/shibapm/Rocket", from: "1.2.0"), // dev
    .package(url: "https://github.com/brightdigit/swift-test-codecov", from: "1.0.0"), // dev
    .package(url: "https://github.com/brightdigit/Prch.git", from: "0.2.0")
  ],
  targets: [
    .target(name: "SwiftTube", dependencies: ["Prch"]),
    .testTarget(name: "SwiftTubeTests", dependencies: ["SwiftTube"])
  ]
)

#if canImport(PackageConfig)
  import PackageConfig

  let requiredCoverage: Int = 85

  let config = PackageConfiguration([
    "rocket": [
      "steps": [
        ["hide_dev_dependencies": ["package_path": "Package@swift-5.5.swift"]],
        "hide_dev_dependencies",
        "git_add",
        "commit",
        "tag",
        "unhide_dev_dependencies",
        ["unhide_dev_dependencies": ["package_path": "Package@swift-5.5.swift"]],
        "git_add",
        ["commit": ["message": "Unhide dev dependencies"]]
      ]
    ],
    "komondor": [
      "pre-commit": [
        "swift test --generate-linuxmain",
        "swift run swiftformat .",
        "swift run swiftlint autocorrect",
        "git add .",
        "swift run swiftformat --lint .",
        "swift run swiftlint"
      ]
    ]
  ]).write()
#endif
