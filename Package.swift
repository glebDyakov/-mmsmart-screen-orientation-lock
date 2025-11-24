// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MmsmartScreenOrientationLock",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MmsmartScreenOrientationLock",
            targets: ["OrientationPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "OrientationPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/OrientationPlugin"),
        .testTarget(
            name: "OrientationPluginTests",
            dependencies: ["OrientationPlugin"],
            path: "ios/Tests/OrientationPluginTests")
    ]
)