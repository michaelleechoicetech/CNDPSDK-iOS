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
            checksum : "3beae02cbe56f65f7def28e0f2cdd77791ff7345a947121a07fe5b96624ebcbc"
        )
    ]
)