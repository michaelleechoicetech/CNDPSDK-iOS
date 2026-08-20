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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.11/CTKCNDP.xcframework.zip",
            checksum: "4e54ea4e244c176be1617e770f8f9a9d40c2a58ef4e6f0cb28c0565708ddf043"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.11/CTKCNDP_Universal.xcframework.zip",
            checksum: "00372b4d96a9e45b699f4a99148706d2822f7f62fbd4a95b0b5aa8ab85a954e6"
        )
    ]
)
