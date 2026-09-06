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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.45/CTKCNDP.xcframework.zip",
            checksum: "72c0df8ff8f80ce1973a1e65942b3eb3f16ddcb09b5cac3321d04b10dc4def9c"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.45/CTKCNDP_Universal.xcframework.zip",
            checksum: "2cb4afda371e449c86d041d622a6dc74cdbc1e83f58d341a0e72f2090dbb28ae"
        )
    ]
)
