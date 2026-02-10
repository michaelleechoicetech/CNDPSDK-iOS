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
            checksum : "9cf5e70223eefd28982b50d1ebfafddf7c863224f90e343ceea43d232b27ee75"
        )
    ]
)