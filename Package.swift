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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.61/CTKCNDP.xcframework.zip",
            checksum: "d9ac6ce80d4b39a2eb56b758b68f04ad40d9ac8b439bd47f9bcd8e58cd273901"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.61/CTKCNDP_Universal.xcframework.zip",
            checksum: "da3fdbef346d66c7229391e24c7e7fa60fb225a5b65207f956dafbfe6e93eb51"
        )
    ]
)
