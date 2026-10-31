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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.100/CTKCNDP.xcframework.zip",
            checksum: "867d090f279204cf42deefa8d2b12a9e3701fb44989ca97bb342c4b068f746cf"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.100/CTKCNDP_Universal.xcframework.zip",
            checksum: "f5cdc3d1daa5752cf28154c4dfdc359cf2e3b88967f6b3affd99ce5bc66d3f4d"
        )
    ]
)
