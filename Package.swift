// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mobile-services",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdobeMobileSDK",
            targets: ["AdobeMobile",
                      "VFAdobeAnalytics"]
        )
    ],
    targets: [
        .target(name: "VFAdobeAnalytics",
                dependencies: [
                    "AdobeMobile" 
                ]),
        .binaryTarget(
            name: "AdobeMobile",
            url: "https://github.com/khaledsaad93/mobile-services/raw/master/Sources/AdobeMobile.xcframework.zip",
            checksum: "e79ab758f9d9a225e81e1619de53cf944a89ca1c3cadbb45f660ec138694d093"
        )
    ]
)
