//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

@testable import Markup

enum Fixtures {

	static var comment: some Node {
		Comment("test")
	}

	static var empty: some Node {
		Empty()
	}

	static var singleElement: some Node {
		self.generate(element: "A") {
			self.empty
		}
	}

	static var nestedElement: some Node {
		self.generate(element: "B") {
			self.singleElement
		}
	}

	static var fragment: some Node {
		self.generate(element: "C") {
			self.singleElement
			self.nestedElement
		}
	}

	static var raw: Raw {
		.init("test")
	}

	static var text: Text {
		.init("test")
	}
}

extension Fixtures {

	static func generate<Content: Node>(element: String, @ContentBuilder build: () -> Content) -> Element<Fixtures, Content> {
		.init(name: element, attributes: [], build: build)
	}

	static func generate(element: String) -> Element<Fixtures, Empty> {
		.init(name: element, attributes: [], build: Empty.init)
	}
}
