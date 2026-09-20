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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.69/CTKCNDP.xcframework.zip",
            checksum: "c18fe56f24ca36ed595cb6a33c6b0622ea6f7111b597a7ad12d3f9444295215c"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.69/CTKCNDP_Universal.xcframework.zip",
            checksum: "5da270e3a4e09cea4bd0df4b2609d697a0faeee5ba3d97794c14ad4f1b6f291e"
        )
    ]
)
