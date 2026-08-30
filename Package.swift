// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "markup",

	platforms: [
		.macOS(.v26),
	],

    products: [
        .library(name: "Markup", targets: ["Markup"]),

		.library(name: "HTML", targets: ["HTML"]),
		.library(name: "HTMX", targets: ["HTMX"]),

		.library(name: "SVG", targets: ["SVG"]),
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

		.target(
			name: "SVG",
			dependencies: ["Markup", "HTML"]
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

		.testTarget(
			name: "SVGTests",
			dependencies: ["SVG"],
		),
    ],
)
