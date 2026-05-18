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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.99/CTKCNDP.xcframework.zip",
            checksum: "4e079f02fbd30fe11fcb2347f3c6f0ef5066effc3147ba8ba4761f9ad25a9e95"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.99/CTKCNDP_Universal.xcframework.zip",
            checksum: "8cbf1a66bcecbfde144dcfd9148725a6736c3a86a19ee1948455d428a24f1a14"
        )
    ]
)
