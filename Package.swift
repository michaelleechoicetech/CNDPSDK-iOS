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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.1/CTKCNDP.xcframework.zip",
            checksum: "cc46e9cfd826e8c152cd47bb255213432a12437b536d3726e451eaf324db8d24"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.1.1/CTKCNDP_Universal.xcframework.zip",
            checksum: "f7eaae99e1f1040f5c13ef3132cacc0aa6e98f9c9d51ee70c4d4ef261cb897e4"
        )
    ]
)
