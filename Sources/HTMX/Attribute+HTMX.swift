//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import HTML

public enum HTMX {}

// MARK: -

extension Attribute where Tag: HTML.Tag {

	/// A namespace for HTMX attributes.
	public enum hx {}
}

// MARK: - Methods

extension Attribute.hx {

	/// Creates an `hx-get` attribute.
	@inlinable public static func get(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-get", value: url)
	}

	/// Creates an `hx-post` attribute.
	@inlinable public static func post(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-post", value: url)
	}

	/// Creates an `hx-put` attribute.
	@inlinable public static func put(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-put", value: url)
	}

	/// Creates an `hx-patch` attribute.
	@inlinable public static func patch(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-patch", value: url)
	}

	/// Creates an `hx-delete` attribute.
	@inlinable public static func delete(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-delete", value: url)
	}

	/// Creates an `hx-query` attribute.
	@inlinable public static func query(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-query", value: url)
	}
}

// MARK: - Request Control

extension Attribute.hx {

	/// Creates an `hx-trigger` attribute.
	@inlinable public static func trigger(_ value: consuming HTMX.Trigger) -> Attribute<Tag> {
		.init(name: "hx-trigger", value: value)
	}

	/// Creates an `hx-trigger` attribute.
	@inlinable public static func trigger(_ values: HTMX.Trigger...) -> Attribute<Tag> {
		.init(name: "hx-trigger", values: values, separator: ", ")
	}

	/// Creates an `hx-swap` attribute.
	@inlinable public static func swap(_ style: consuming HTMX.Swap) -> Attribute<Tag> {
		.init(name: "hx-swap", value: style)
	}

	/// Creates an `hx-target` attribute.
	@inlinable public static func target(_ selector: consuming HTMX.FooSelector) -> Attribute<Tag> {
		.init(name: "hx-target", value: selector)
	}

	/// Creates an `hx-select` attribute.
	@inlinable public static func select(_ selector: consuming String) -> Attribute<Tag> {
		.init(name: "hx-select", value: selector)
	}

	/// Creates an `hx-swap-oob` attribute.
	@inlinable public static func swapOOB(_ selector: consuming HTMX.SwapOOB) -> Attribute<Tag> {
		.init(name: "hx-swap-oob", value: selector)
	}

	/// Creates an `hx-select-oob` attribute.
	@inlinable public static func selectOOB(_ selector: consuming String) -> Attribute<Tag> {
		.init(name: "hx-select-oob", value: selector)
	}

	/// Creates an `hx-confirm` attribute.
	@inlinable public static func confirm(_ message: consuming String) -> Attribute<Tag> {
		.init(name: "hx-confirm", value: message)
	}
}

// MARK: - Data

extension Attribute.hx {

	// TODO: add simple json decoding
	/// Creates an `hx-vals` attribute.
	@inlinable public static func vals(_ json: consuming HTMX.Vals) -> Attribute<Tag> {
		.init(name: "hx-vals", value: json.rawValue)
	}

	/// Creates an `hx-include` attribute.
	@inlinable public static func include(_ value: consuming HTMX.Include) -> Attribute<Tag> {
		.init(name: "hx-include", value: value)
	}

	/// Creates an `hx-include` attribute.
	@inlinable public static func include(_ values: HTMX.Include...) -> Attribute<Tag> {
		.init(name: "hx-include", values: values, separator: ", ")
	}

	/// Creates an `hx-headers` attribute.
	@inlinable public static func headers(_ json: consuming String) -> Attribute<Tag> {
		.init(name: "hx-headers", value: json)
	}

	/// Creates an `hx-encoding` attribute.
	@inlinable public static func encoding(_ type: consuming HTML.EncType) -> Attribute<Tag> {
		.init(name: "hx-encoding", value: type)
	}
}

// MARK: - History

extension Attribute.hx {

	/// Creates an `hx-push-url` attribute.
	@inlinable public static func pushURL(_ enable: consuming Bool) -> Attribute<Tag> {
		.init(name: "hx-push-url", value: enable)
	}

	/// Creates an `hx-push-url` attribute.
	@inlinable public static func pushURL(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-push-url", value: url)
	}

	/// Creates an `hx-replace-url` attribute.
	@inlinable public static func replaceURL(_ enable: consuming Bool) -> Attribute<Tag> {
		.init(name: "hx-replace-url", value: enable)
	}

	/// Creates an `hx-replace-url` attribute.
	@inlinable public static func replaceURL(_ url: consuming String) -> Attribute<Tag> {
		.init(name: "hx-replace-url", value: url)
	}

	/// Creates an `hx-history-elt` attribute.
	@inlinable public static func historyElt() -> Attribute<Tag> {
		.init(name: "hx-history-elt")
	}
}

// MARK: - Enhancements

extension Attribute.hx {

	/// Creates an `hx-boost` attribute.
	@inlinable public static func boost(_ enable: consuming Bool) -> Attribute<Tag> {
		.init(name: "hx-boost", value: enable)
	}

	/// Creates an `hx-preload` attribute.


	/// Creates an `hx-pending` attribute.
}

// MARK: - Misc

extension Attribute.hx {

	/// Creates an `hx-indicator` attribute.
	@inlinable public static func indicator(_ value: consuming HTMX.Indicator) -> Attribute<Tag> {
		.init(name: "hx-indicator", value: value)
	}

	/// Creates an `hx-indicator` attribute.
	@inlinable public static func indicator(_ values: HTMX.Indicator...) -> Attribute<Tag> {
		.init(name: "hx-indicator", values: values, separator: ", ")
	}

	/// Creates an `hx-sync` attribute.
	@inlinable public static func sync(_ selector: consuming HTMX.FooSelector) -> Attribute<Tag> {
		.init(name: "hx-sync", value: selector)
	}

	/// Creates an `hx-sync` attribute.
	@inlinable public static func sync(_ selector: consuming HTMX.FooSelector, _ strategy: consuming HTMX.SyncStrategy) -> Attribute<Tag> {
		let modification = selector.rawValue + ":\(strategy)"
		return .init(name: "hx-sync", value: modification)
	}

	// TODO: hx-status

	/// Creates an `hx-validate` attribute.
	@inlinable public static func validate(_ enable: consuming Bool) -> Attribute<Tag> {
		.init(name: "hx-validate", value: enable)
	}

	/// Creates an `hx-disabled` attribute.
	@inlinable public static func disable(_ selector: consuming HTMX.FooSelector) -> Attribute<Tag> {
		.init(name: "hx-disable", value: selector)
	}

	/// Creates an `hx-ignore` attribute.
	@inlinable public static func ignore() -> Attribute<Tag> {
		.init(name: "hx-ignore")
	}

	// !!!: v4:name, v2: implementation
	/// Creates an `hx-disabled-elt` attribute.
	@inlinable public static func disable(_ selector: HTMX.FooSelector...) -> Attribute<Tag> {
		.init(name: "hx-disable", values: selector, separator: ", ")
	}

	/// Creates an `hx-preserve` attribute.
	@inlinable public static func preserve() -> Attribute<Tag> {
		.init(name: "hx-preserve")
	}

	// TODO: hx-morph-skip
	// TODO: hx-morph-skip-children
	// TODO: hx-action
	// TODO: hx-method
	// TODO: hx-config
}
