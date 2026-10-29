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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.97/CTKCNDP.xcframework.zip",
            checksum: "749349bc11a0ca37a9bb2fe55d3937af71537e82718f9d24d1fb7f39d4aa9c6a"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.97/CTKCNDP_Universal.xcframework.zip",
            checksum: "45b21cefa281d871d2acd46ea2e1321d5f528fe4f91d415ddacd3c75ab5204ed"
        )
    ]
)
