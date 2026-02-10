// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CTKCNDP",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "CTKCNDP",
            targets: ["CTKCNDP"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CTKCNDP",
            url: "https://static.uwb.app/ctk/cndpsdk/CTKCNDP.xcframework.zip",
            checksum : "d02dc63e3dc28c845fb9f9bd481a61447e752e6947a416df9db94e18e6a3f174"
        )
    ]
)