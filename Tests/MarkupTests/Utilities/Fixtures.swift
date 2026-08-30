//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

@testable import Markup

enum Tags {
	enum foo: TagDefinition { public static let name: StaticString = "foo" }
	enum bar: TagDefinition { public static let name: StaticString = "bar" }
	enum baz: TagDefinition { public static let name: StaticString = "baz" }
}

// MARK: -

enum Fixtures {

	static var comment: some Node {
		Comment("test")
	}

	static var empty: some Node {
		Empty()
	}

	static var raw: Raw {
		.init("test")
	}

	static var text: Text {
		.init("test")
	}
}
