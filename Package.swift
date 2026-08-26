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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.25/CTKCNDP.xcframework.zip",
            checksum: "7525eb8aa4aa10f3e8b8a11b3a8f9bbc35ceef86b06f8dcea408bce6b6056340"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.25/CTKCNDP_Universal.xcframework.zip",
            checksum: "339222cc2ecd5001e35b242cfd47a23fc8c829711b2ea4c776d945b59ccfb6e0"
        )
    ]
)
