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
            checksum : "a045ec9adcfc71ae7f75c03d6be896fdfb80fb94da8fb1e93e5adc7dfe03a67a"
        )
    ]
)