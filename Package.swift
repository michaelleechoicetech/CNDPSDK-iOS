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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.60/CTKCNDP.xcframework.zip",
            checksum: "2e068bac242daa37e7f9f78c22f0d899acabe8c5b87c0e53a3e7ab4bf3e363ab"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.60/CTKCNDP_Universal.xcframework.zip",
            checksum: "91b3fc41a71518510c91777bcbd23ec04ce06126fa59a4ec4a0a6746b71464cb"
        )
    ]
)
