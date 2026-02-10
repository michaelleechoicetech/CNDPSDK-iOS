// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CNDPSDK-iOS",
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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v0.0.8/CTKCNDP.xcframework.zip",
            checksum: "5142129e1d066c4a731515e8879212f5e7a9efd521ba4a23b40044b1c77363b1"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v0.0.8/CTKCNDP_Universal.xcframework.zip",
            checksum: "d1b7554b48e7f421714a92645244b9040f3f68f529175798f4fef91f3817e6c7"
        )
    ]
)
