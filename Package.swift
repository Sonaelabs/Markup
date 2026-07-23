// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "Markup",

	platforms: [
		.macOS(.v14),
	],

    products: [
        .library(
            name: "Markup",
            targets: [
				"Markup",
			],
        ),

		.library(
			name: "HTML",
			targets: [
				"HTML",
			],
		),
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

		.target(
			name: "HTML",
			dependencies: [
				"Markup",
			]
		),

		.testTarget(
            name: "HTMLTests",
            dependencies: [
				"HTML",
			],
        ),
    ],
)
