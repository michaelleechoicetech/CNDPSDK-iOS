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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.85/CTKCNDP.xcframework.zip",
            checksum: "7a4fec2df175ac7b8b1cf0fb57d9bd6be38172bebe8c7e8c20934e8764a56ef7"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.85/CTKCNDP_Universal.xcframework.zip",
            checksum: "dcbf19a4d71ce7dcf6fb9dc59ba8a9eb54b9f11b65e34c83db9eac71cbb24ecb"
        )
    ]
)
