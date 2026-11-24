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
            url: "https://github.com/binhalomobi/ULinkAD-ios/releases/download/2.0.0/ULinkAD-2.0.0.zip",
            checksum: "cfc8591cceac6b2b12f0938f1e4a77cea2569cceb693aa1fa97ba1ac984677c4"
        )
    ]
)
