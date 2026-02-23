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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.23/CTKCNDP.xcframework.zip",
            checksum: "2a4da8a97bca2b49bbdacd33a31bcede41373ccc84a137610ec04a5320ee795c"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.23/CTKCNDP_Universal.xcframework.zip",
            checksum: "fbff9d5de87700cbc1a096efb26f075be605cfdaf9d468d78d10d72471383e4a"
        )
    ]
)
