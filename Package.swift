// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwitchRPC",
	platforms: [
		.macOS(.v15),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "SwitchRPC",
			dependencies: [
				"Support",
			],
			swiftSettings: [
				.enableExperimentalFeature("Embedded"),
				.unsafeFlags(["-wmo"])
			]
		),
		.target(
			name: "SwitchRPCConfig",
			dependencies: [
				"Support",
			],
			swiftSettings: [
				.enableExperimentalFeature("Embedded"),
				.unsafeFlags(["-wmo"])
			]
		),
		.systemLibrary(name: "Support"),
	]
)
