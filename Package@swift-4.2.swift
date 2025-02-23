// swift-tools-version:4.2
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
  swiftLanguageVersions: [.v3, .v4, .v4_2]
)
