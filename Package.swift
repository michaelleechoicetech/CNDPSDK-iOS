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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.24/CTKCNDP.xcframework.zip",
            checksum: "b453f4db4bcfeba76818b4ce3ca3ea8ffcabb291cdb2e292d0716fbd05f26196"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.24/CTKCNDP_Universal.xcframework.zip",
            checksum: "d0aa1cc40aea621cd262672f5c00a5f7240352af5617ea605158f23dd9e0c9bb"
        )
    ]
)
