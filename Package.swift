// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Swiftube",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "Swiftube", targets: ["Swiftube"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Prch"),
        .target(name: "Swiftube", dependencies: ["Prch"])
    ]
)
