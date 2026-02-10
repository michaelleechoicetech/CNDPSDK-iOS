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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v0.0.6/CTKCNDP.xcframework.zip0c317c22806b9d66ed5a241775375c322df3360e7d40bdf426443a59124c6a"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v0.0.6/CTKCNDP_Universal.xcframework.zip",
            checksum: "efd46fea9229107c3bdc329bb21970811fa86dcd4bce8169b876551a8102616b"
        )
    ]
)
