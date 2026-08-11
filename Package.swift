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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.4/CTKCNDP.xcframework.zip",
            checksum: "0bf0af4809e8c9c1ff38c43cc7e8b7bb98ecde7477fddc39ad56a5fd3a096e10"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.4/CTKCNDP_Universal.xcframework.zip",
            checksum: "1081272893b310ead4056de97d8e1f72387d3ff9e3da07884a3881e4b9b82a1f"
        )
    ]
)
