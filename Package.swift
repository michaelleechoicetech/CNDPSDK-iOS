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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.37/CTKCNDP.xcframework.zip",
            checksum: "7acfa0f92c4a2e441c86cbcc43bebb84c0e2f34b0b711ef3efe3eed392c1228a"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.37/CTKCNDP_Universal.xcframework.zip",
            checksum: "2647fd27a8bde7ed6133d64f2d0fc2ef8a97595a45abf5a1a1adfa8bec076feb"
        )
    ]
)
