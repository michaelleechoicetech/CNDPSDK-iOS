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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.92/CTKCNDP.xcframework.zip",
            checksum: "88d4700fcdaa1e4a93bd0360ea2b4364ab61b1d8e57c589e1989dfff9498c6e8"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.92/CTKCNDP_Universal.xcframework.zip",
            checksum: "7a412c6d6208e5ca70079c0123a761aa06509ad27bdc73bdbd344fee91e7ff5e"
        )
    ]
)
