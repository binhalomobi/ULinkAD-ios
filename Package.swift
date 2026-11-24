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
            url: "https://github.com/binhalomobi/ULinkAD-ios/releases/download/2.0.1/ULinkAD-2.0.1.zip",
            checksum: "c2a88118bda856b8272720bdd6ba05c3f559c6c25ecf575c7b8dcae6ca0534ce"
        )
    ]
)
