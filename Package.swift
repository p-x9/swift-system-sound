// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SystemSound",
    products: [
        .library(
            name: "SystemSound",
            targets: ["SystemSound"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SystemSound",
            dependencies: []
        ),
        .testTarget(
            name: "SystemSoundTests",
            dependencies: ["SystemSound"]
        ),
    ]
)
