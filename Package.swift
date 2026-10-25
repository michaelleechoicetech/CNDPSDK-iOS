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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.93/CTKCNDP.xcframework.zip",
            checksum: "0c85fbb5c96c8836bfbeee2c7c420c39a265a8d10181abe0bb9a5852fec27432"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.93/CTKCNDP_Universal.xcframework.zip",
            checksum: "b9f0095c84c121fb0b4ec7e91ac0b4063a349a6489fd366b62e91e2356e2fc74"
        )
    ]
)
