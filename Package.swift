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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.46/CTKCNDP.xcframework.zip",
            checksum: "e0177579bafae98ad9f7c878b1d48221a3a5b3f47e004bc3c7e99d5f8398fba5"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.46/CTKCNDP_Universal.xcframework.zip",
            checksum: "84086b759987910233908b315e88db9005b99621d8aec738d831fa0440e4a183"
        )
    ]
)
