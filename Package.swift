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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.46/CTKCNDP.xcframework.zip",
            checksum: "702c8dc0cf77a392c89b0f4b185a4c3b3ea19b5750d9c1d79092b2266224c5bb"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.46/CTKCNDP_Universal.xcframework.zip",
            checksum: "6a530ba8af8788aa19f6cdfad0aef9ed006c13c06a524119804eeed1b82b24b1"
        )
    ]
)
