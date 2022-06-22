// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "pointfree-episode-193-issue",
	platforms: [.macOS(.v12)],
	dependencies: [],
	targets: [
		.executableTarget(
			name: "pointfree-episode-193-issue",
			dependencies: [],
			swiftSettings: [
				.unsafeFlags(["-Xfrontend", "-warn-concurrency"])
			]
		)
	]
)
