//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import HTML

extension Attribute where Tag: HTMLTag {

	/// A namespace for HTMX SSE attributes.
	public enum sse {}
}

// MARK: -

extension Attribute.sse {

	/// Creates an `sse-connect` attribute.
	@inlinable public static func connect(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "sse-connect", value: url)
	}

	/// Creates an `sse-swap` attribute.
	@inlinable public static func swap(_ name: consuming String) -> Attribute<Tag> {
		.init(name: "sse-swap", value: name)
	}

	/// Creates an `sse-swap` attribute.
	@inlinable public static func swap(_ names: String...) -> Attribute<Tag> {
		swap(names.joined(separator: ", "))
	}

	/// Creates an `sse-close` attribute.
	@inlinable public static func close(_ name: consuming String) -> Attribute<Tag> {
		.init(name: "sse-close", value: name)
	}
}

// MARK: -

extension Trigger {

	/// Creates a `sse` event trigger.
	@inlinable public static func sse(_ name: consuming String) -> Self {
		.init(rawValue: "sse").appending(name)
	}
}
