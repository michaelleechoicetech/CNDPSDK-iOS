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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.58/CTKCNDP.xcframework.zip",
            checksum: "15d2b5e879ed44343cb2d62a3bbcbbd88e9f0c34898db2e90e9564f7a6b265f2"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.58/CTKCNDP_Universal.xcframework.zip",
            checksum: "898ceb8eb7c4b89b0af1d8e7e7943e8dce902ef3c9c5b4ae37d6711a64fccb0c"
        )
    ]
)
