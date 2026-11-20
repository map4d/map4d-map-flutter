// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "map4d_map",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "map4d-map", targets: ["map4d_map"]),
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/map4d/map4d-map-ios-sdk.git", from: "3.4.0"),
    ],
    targets: [
        .target(
            name: "map4d_map",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "Map4dMap", package: "map4d-map-ios-sdk"),
            ],
            cSettings: [
                .headerSearchPath("include/map4d_map"),
            ]
        ),
    ]
)
