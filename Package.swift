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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.110/CTKCNDP.xcframework.zip",
            checksum: "5f0904ea5a3fe0315400061dd9746649cd5c1c12ce6b0a54f2ad3f228ee2b27e"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.110/CTKCNDP_Universal.xcframework.zip",
            checksum: "bdbd99585cff25403776c4955fba0c645a0eaf96f92fcd1350b7f5dc26d1da2c"
        )
    ]
)
