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
            checksum : "8854379e3fb6b09387dbbfbc9440c7c2a5dd35dedf7df25a75f78ce23b7d81d5"
        )
    ]
)