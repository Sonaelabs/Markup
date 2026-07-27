//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import HTML

extension Attribute where Tag: HTMLTag {

	/// A namespace for HTMX WS attributes.
	public enum ws {}
}

// MARK: -

extension Attribute.ws {

	/// Creates a `ws-connect` attribute.
	@inlinable public static func connect(_ url: String) -> Attribute<Tag> {
		.init(name: "ws-connect", value: url)
	}

	/// Creates a `ws-send` attribute.
	@inlinable public static func send() -> Attribute<Tag> {
		.init(name: "ws-send")
	}
}
