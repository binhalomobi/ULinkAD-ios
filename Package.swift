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
            url: "https://github.com/binhalomobi/ULinkAD-ios/releases/download/2.0.2/ULinkAD-2.0.2.zip",
            checksum: "74217ac5e1b8647d6279e261d92d5b58d596bc448ade678d450d5d7aafbc037b"
        )
    ]
)
