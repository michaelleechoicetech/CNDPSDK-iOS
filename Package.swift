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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.52-clinique/CTKCNDP.xcframework.zip",
            checksum: "0a75928ef1bc7526354f9a8670fc0a88084325cdd2ad990db437b65d3a682496"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.52-clinique/CTKCNDP_Universal.xcframework.zip",
            checksum: "8c06c8de661098b2e1fdbddf7aa7810f71f6141739e3219941e8da754cd6890a"
        )
    ]
)
