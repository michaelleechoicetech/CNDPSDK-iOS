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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.104/CTKCNDP.xcframework.zip",
            checksum: "ec3a8dc65dd4355bcea7c48e3c20059940f28aa1088a33bb5e9711a299a827d3"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.104/CTKCNDP_Universal.xcframework.zip",
            checksum: "e4fd2b4f8a6baacf445a4e4ed875faf4ffa089481f4b03e1b05fdc61a20fd181"
        )
    ]
)
