// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "BrurbergDotDev",
    products: [
        .executable(name: "Blog", targets: ["Blog"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "Blog",
            dependencies: ["Publish"]
        )
    ]
)
