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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.64/CTKCNDP.xcframework.zip",
            checksum: "8e0a4665bdd392a1b2bd6bff88e8aa022cf7bea0f3349bc9bbe05a3ca1b67f83"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.64/CTKCNDP_Universal.xcframework.zip",
            checksum: "6b29c5f9071fd85f4599b55aef7c2a32e29d5506f6a87b0850c3a8cb35c3ac5f"
        )
    ]
)
