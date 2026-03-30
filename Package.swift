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
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.85/CTKCNDP.xcframework.zip",
            checksum: "4cdb9ca7f43ede200c9a55ec92edbcad4dd3f4390d1b6320dbdf21a6fee0718e"
        ),
        .binaryTarget(
            name: "CTKCNDP_Universal",
            url: "https://github.com/michaelleechoicetech/CNDPSDK-iOS/releases/download/v1.0.85/CTKCNDP_Universal.xcframework.zip",
            checksum: "1ed3424c840c2d2572a0e4835c0e7751f80ee2c19e6d7c03224e3aebe60e66ee"
        )
    ]
)
