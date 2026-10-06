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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.77/CTKCNDP.xcframework.zip",
            checksum: "8f7f599393b42bafd41bbb6d24ffca5a5d13d0fed93d2a114a253648d369ef18"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.77/CTKCNDP_Universal.xcframework.zip",
            checksum: "a3f40dd6d3a06a9bd072f7062a55f0b9dc886eaa85949e91c25d8b8887151aee"
        )
    ]
)
