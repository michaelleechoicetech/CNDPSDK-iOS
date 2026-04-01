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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.88/CTKCNDP.xcframework.zip",
            checksum: "2dc0654dd099c6e877f768138ccf24a6a3953dff4baa6aeabfe4f779e2a272fc"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.88/CTKCNDP_Universal.xcframework.zip",
            checksum: "eeda5d64ec3f4fa6e7d18a7d3c81d49d5a4067e5507a9eef3d53bc5149fb4fc5"
        )
    ]
)
