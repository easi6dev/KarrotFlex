// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KarrotFlex",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "KarrotFlex",
      targets: ["KarrotFlex"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/layoutBox/FlexLayout",
      .upToNextMajor(from: "2.0.05")
    ),
    .package(
      url: "https://github.com/layoutBox/PinLayout",
      .upToNextMajor(from: "1.10.5")
    ),
    .package(
      url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
      from: "1.9.0"
    ),
  ],
  targets: [
    .target(
      name: "KarrotFlex",
      dependencies: [
        .product(name: "FlexLayout", package: "FlexLayout"),
        .product(name: "PinLayout", package: "PinLayout"),
      ]
    ),
    .testTarget(
      name: "KarrotFlexTests",
      dependencies: [
        "KarrotFlex",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ]
    ),
  ],
  cLanguageStandard: .gnu99,
  cxxLanguageStandard: .gnucxx11
)
