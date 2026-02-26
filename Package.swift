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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.42/CTKCNDP.xcframework.zip",
            checksum: "90780c80ddd3cd4355c358a9e4ff6c37cd494c7f7fc5618f3556ff1f0658af4f"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.42/CTKCNDP_Universal.xcframework.zip",
            checksum: "b96f0b0f844c1e4662376ee58ebd7dc7936fd03ad8f6e7bc42b53649c3d1ac7f"
        )
    ]
)
