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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.6/CTKCNDP.xcframework.zip",
            checksum: "a3337f1893fe582bc2e6f01fccd906ac4fec631319a26fee5a0c7b26c13254fa"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.6/CTKCNDP_Universal.xcframework.zip",
            checksum: "1f7f5b773c37b9f7378aea1eb76b20a7674b984bd46ac0e8fcc75ca4e41e83af"
        )
    ]
)
