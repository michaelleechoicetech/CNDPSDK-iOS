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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.98/CTKCNDP.xcframework.zip",
            checksum: "a952e39e3604e5d4efb512c703a46d6cbc46e150cbe349420e634b9503a84f4f"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.98/CTKCNDP_Universal.xcframework.zip",
            checksum: "cf3d5ac9a895fe9f13e5ed69c4cee7bfb5fb9d08b8b55961d133a3552c9c1f57"
        )
    ]
)
