// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CNDPSDK",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        // iOS Only (Device Only, Smaller Size)
        .library(
            name: "CTKCNDP",
            targets: ["CTKCNDP"]),
        // Universal (Device + Simulator + macOS)
        .library(
            name: "CTKCNDP_Universal",
            targets: ["CTKCNDP_Universal"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CTKCNDP",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.88/CTKCNDP.xcframework.zip",
            checksum: "e203e22a686ab78c14de4ac8e1804115fa3506615a0fed84a4bdd991a802e789"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.88/CTKCNDP_Universal.xcframework.zip",
            checksum: "af0d3ed6824f57ff88eedc3f8053b89d059ac7aad2775101c7a69e519fab93b3"
        )
    ]
)
