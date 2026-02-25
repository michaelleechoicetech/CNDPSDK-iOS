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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.32/CTKCNDP.xcframework.zip",
            checksum: "abfd3d26abe30951f0b56e4383eef4182de99c9a58e9a20d87d3e0fc16f0ec7f"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.32/CTKCNDP_Universal.xcframework.zip",
            checksum: "acabd21ac235e654f5d7ee049fab477f373f6e3ea4cd7ae6295dfb3e2b1a8d5e"
        )
    ]
)
