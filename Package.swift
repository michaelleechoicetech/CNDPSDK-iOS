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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.20/CTKCNDP.xcframework.zip",
            checksum: "4b5fb5f06b51536c4733340db1b4bf34b9dfbbcb49354d62bdf5ba11ae31a3e1"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.20/CTKCNDP_Universal.xcframework.zip",
            checksum: "f313ac9866bb6b474165d156263509f2a56b0bb01f69ba3f2cfc8f2e44dbe9c6"
        )
    ]
)
