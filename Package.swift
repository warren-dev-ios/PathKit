// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "PathKit",
  products: [
    .library(name: "PathKit", targets: ["PathKit"]),
  ],
  dependencies: [
    .package(url:"https://github.com/warren-dev-ios/Spectre.git", .branch("master"))
  ],
  targets: [
    .target(name: "PathKit", dependencies: [], path: "Sources"),
    .testTarget(name: "PathKitTests", dependencies: ["PathKit", "Spectre"], path:"Tests/PathKitTests")
  ],
  swiftLanguageVersions: [3, 4]
)
