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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.8/CTKCNDP.xcframework.zip",
            checksum: "04ab2d0b8cb70a23cd48f920782973f0cd16ea494d97b0a374051f3aeadf479b"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.8/CTKCNDP_Universal.xcframework.zip",
            checksum: "48638ebbf33803aac74e2172777d3a6f3e0d3ddfe3d4fe53ddd364c1d06f8ca6"
        )
    ]
)
