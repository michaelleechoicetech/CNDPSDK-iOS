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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.27/CTKCNDP.xcframework.zip",
            checksum: "1e1b611ad849c08b99bf64716f79aef3d7823bea3f19239c2dd8267c31e6aa97"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.27/CTKCNDP_Universal.xcframework.zip",
            checksum: "c7bf650bfe7845f9cedc5a35a6c9ab0978a89f3d427c24d7e6112cef700e5f6a"
        )
    ]
)
