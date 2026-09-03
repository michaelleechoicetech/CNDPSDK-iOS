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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.42/CTKCNDP.xcframework.zip",
            checksum: "aa5aba0c3821f40193d9bfaca3c983ac20e0f088de0add2babceb47bb693aae3"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.42/CTKCNDP_Universal.xcframework.zip",
            checksum: "7c7ddf9db197563a47ea5fbcd9656d9b18dd8134b88bb1ce8df8bd9fc0df56e5"
        )
    ]
)
