// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "notification_cleaner",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "notification_cleaner",
            targets: ["notification_cleaner"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "notification_cleaner",
            dependencies: [],
            path: "Sources/notification_cleaner"
        )
    ]
)
