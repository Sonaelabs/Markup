//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension meta {

	/// Creates a `<meta charset="...">` element.
	@inlinable public static func charset(_ value: consuming Charset = .utf8) -> Self {
		.init(.charset(value))
	}

	/// Creates a `<meta name="author" content="...">` element.
	@inlinable public static func author(_ value: consuming String) -> Self {
		.init(.name("author"), .content(value))
	}

	/// Creates a `<meta name="description" content="...">` element.
	@inlinable public static func description(_ value: consuming String) -> Self {
		.init(.name("description"), .content(value))
	}

	/// Creates a `<meta name="keywords" content="...">` element.
	@inlinable public static func keywords(_ value: consuming String) -> Self {
		.init(.name("keywords"), .content(value))
	}

	/// Creates a `<meta name="viewport" content="...">` element.
	@inlinable public static func viewport(_ value: consuming String) -> Self {
		.init(.name("viewport"), .content(value))
	}
}
