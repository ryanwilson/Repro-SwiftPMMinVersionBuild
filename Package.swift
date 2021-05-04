// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Repro-SwiftPMMinVersionBuild",
  // Changing the platform from v10 to v11 eliminates this issue.
  platforms: [.iOS(.v10)],
  products: [
    .library(
      name: "Repro-SwiftPMMinVersionBuild",
      targets: ["Repro-SwiftPMMinVersionBuild"]),
  ],
  targets: [
    .target(
      name: "Repro-SwiftPMMinVersionBuild",
      dependencies: [])
  ]
)
