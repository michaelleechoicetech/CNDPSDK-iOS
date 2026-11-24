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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.116/CTKCNDP.xcframework.zip",
            checksum: "07c2b5776fa713a66c462fabbd4a7a89728c2c6e8be20745c8d57fe7b5c9a057"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.116/CTKCNDP_Universal.xcframework.zip",
            checksum: "8667b08c6e98c9c8745abccd009c5dcb6e71f412b0b9812eaeac4ecbac88cade"
        )
    ]
)
