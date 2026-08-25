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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.23/CTKCNDP.xcframework.zip",
            checksum: "2043b3ce5dc8fa153264a2a11d99d999a55140f9e8665836607d366e5ba9ae0b"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.23/CTKCNDP_Universal.xcframework.zip",
            checksum: "6d2cf5f32bb425e0dc0623ca5be2a74cf11c33e50d40c3b3ac3e73ca346552a6"
        )
    ]
)
