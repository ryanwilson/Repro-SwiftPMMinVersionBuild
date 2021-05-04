// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Repro-SwiftPMMinVersionBuild",
  platforms: [.iOS(.v11)],
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
