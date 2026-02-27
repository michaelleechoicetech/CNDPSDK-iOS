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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.50/CTKCNDP.xcframework.zip",
            checksum: "55c62d200843ab8b1752bdb2fe612aa517e6f8832ae7d13700c5eb62f919bfe4"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.50/CTKCNDP_Universal.xcframework.zip",
            checksum: "3ec2e2915d6e23f4b0b2c490004ee7c325cad295bddf6d11b54dfbcb619fd85b"
        )
    ]
)
