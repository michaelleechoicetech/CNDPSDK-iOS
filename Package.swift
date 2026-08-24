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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.21/CTKCNDP.xcframework.zip",
            checksum: "e11a731b4b85d1ce677778f098df11aa12ed0772022d9fffad86ca1731f53e9c"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.21/CTKCNDP_Universal.xcframework.zip",
            checksum: "7bfa324a923fa673f7a05e4890ed3705c72b7dc7ca68134ee9a22f1cbe9b2f94"
        )
    ]
)
