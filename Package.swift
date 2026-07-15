// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "Markup",

	platforms: [
		.macOS(.v14),
	],

	targets: [
        .target(
			name: "Markup",
        ),

		.testTarget(
			name: "MarkupTests",
			dependencies: [
				"Markup",
			],
        ),
    ],
)
