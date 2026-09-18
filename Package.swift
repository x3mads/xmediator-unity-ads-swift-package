// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorUnityAds", targets: ["XMediatorUnityAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.20.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.47.0")),
    ],
    targets: [
        .target(
            name: "XMediatorUnityAdsTarget",
            dependencies: [
                .target(name: "XMediatorUnityAds"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
            ],
            path: "XMediatorUnityAdsTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorUnityAds",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorUnityAds/XMediatorUnityAds-4.20.1.0.zip",
            checksum: "285c55d1c375bba1300ec4f3248db1496f7051e85a06f98176d389f401b65942"
        ),
    ]
)
