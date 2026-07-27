// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "Markup",

	platforms: [
		.macOS(.v14),
	],

    products: [
        .library(name: "Markup", targets: ["Markup"]),

		.library(name: "HTML", targets: ["HTML"]),
		.library(name: "HTMX", targets: ["HTMX"]),
    ],

	targets: [
        .target(name: "Markup"),

		.target(
			name: "HTML",
			dependencies: ["Markup"]
		),

		.target(
			name: "HTMX",
			dependencies: ["HTML"]
		),

		.testTarget(
			name: "MarkupTests",
			dependencies: ["Markup"],
		),

		.testTarget(
            name: "HTMLTests",
            dependencies: ["HTML"],
        ),

		.testTarget(
			name: "HTMXTests",
			dependencies: ["HTMX"],
		),
    ],
)
