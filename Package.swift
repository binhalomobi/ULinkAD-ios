// swift-tools-version:5.9
import PackageDescription

// ULinkAD iOS SDK —— Swift Package Manager 分发清单
//
// 二进制为动态 xcframework：ULinkAdSDK.bundle 资源包与 PrivacyInfo.xcprivacy
// 已内置在 framework 中，集成后由 Xcode 自动 embed 并重签名，无需额外配置资源。
let package = Package(
    name: "ULinkAD",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ULinkAD",
            targets: ["ULinkAD"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ULinkAD",
            url: "https://github.com/binhalomobi/ULinkAD-ios/releases/download/1.2.0/ULinkAD-1.2.0.zip",
            checksum: "47813ce304b0d58f19da89deed26fa67b2045168e5b4eb6f2e9c6c91fde6e13e"
        )
    ]
)
