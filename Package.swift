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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.44/CTKCNDP.xcframework.zip",
            checksum: "156132458570a3b70bddfe3e7f9759ec6ebafbf8d621ab36e516a5f9e18693dd"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.44/CTKCNDP_Universal.xcframework.zip",
            checksum: "d2cb43f0e929cf2a549b7b69d486813857d560d094cf1e7c7b4ed7028f02aaf0"
        )
    ]
)
