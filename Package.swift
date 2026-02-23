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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.21/CTKCNDP.xcframework.zip",
            checksum: "f1fb28fa219c4fd650de0d621d2f64dac02827a4c288f2f6d2461fe3df408bbb"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.21/CTKCNDP_Universal.xcframework.zip",
            checksum: "3e3b5a9fec382cdb17062d85288ba3ab028db891affae4a78ac1b59acbb1c064"
        )
    ]
)
