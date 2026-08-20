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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.10/CTKCNDP.xcframework.zip",
            checksum: "11c92ee498b37678a0e706745fa58e659b7e0ee1b1231faea36d432a23c2d4b4"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.10/CTKCNDP_Universal.xcframework.zip",
            checksum: "2d7bd071c9cdda0326a496d6ac6b67845f2b0c2a062ad4d9d0a6999ee9e1fb09"
        )
    ]
)
