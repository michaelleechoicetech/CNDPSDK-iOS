// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CTKCNDP",
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
            url: "https://static.uwb.app/ctk/cndpsdk/CTKCNDP.xcframework.zip",
            checksum: "c139688b7cd44b3a68a12d35f5a42f46fcbff550d41af205ba8540c5dcc01f4e"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://static.uwb.app/ctk/cndpsdk/CTKCNDP_Universal.xcframework.zip",
            checksum: "f69e5e36938c44dab9e01f75f60c6c133140e8a0112742e622fd5b438e1adae9"
        )
    ]
)
