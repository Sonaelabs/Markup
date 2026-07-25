//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

@testable import Markup

enum Tags {
	enum foo: TagDefinition { public static let name = "foo" }
	enum bar: TagDefinition { public static let name = "bar" }
	enum baz: TagDefinition { public static let name = "baz" }
}

// MARK: -

typealias foo<Content: Node> = Element<Tags.foo, Content>
typealias bar = Element<Tags.bar, Empty>
typealias baz = VoidElement<Tags.baz>

// MARK: -

enum Fixtures {

	static var comment: some Node {
		Comment("test")
	}

	static var empty: some Node {
		Empty()
	}

	static var singleElement: some Node {
		bar()
	}

	static var nestedElement: some Node {
		foo { bar() }
	}

	static var fragment: some Node {
		foo {
			bar()
			baz()
		}
	}

	static var raw: Raw {
		.init("test")
	}

	static var text: Text {
		.init("test")
	}
}
