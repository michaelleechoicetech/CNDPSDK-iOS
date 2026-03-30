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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.80/CTKCNDP.xcframework.zip",
            checksum: "a15eef4fbbd2e8fb2faa489529ad9dfdb90ec198a7fb60bdb074ee27502bdf30"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.80/CTKCNDP_Universal.xcframework.zip",
            checksum: "70300a4bf5f829ad9431bf14e953085507df85ae65b306142552bec835d35e6c"
        )
    ]
)
