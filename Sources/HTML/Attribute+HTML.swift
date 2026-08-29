//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension HTML.Trait {
	public protocol Alt {}
	public protocol Autocomplete {}
	public protocol Charset {}
	public protocol Cite {}
	public protocol Colspan {}
	public protocol Crossorigin {}
	public protocol Datetime {}
	public protocol Dirname {}
	public protocol Disabled {}
	public protocol Download {}
	public protocol For {}
	public protocol Form {}
	public protocol Formaction {}
	public protocol Headers {}
	public protocol Href {}
	public protocol Hreflang {}
	public protocol Label {}
	public protocol Max {}
	public protocol Maxlength {}
	public protocol Media {}
	public protocol Min {}
	public protocol Multiple {}
	public protocol Name {}
	public protocol Open {}
	public protocol Placeholder {}
	public protocol Playback {}
	public protocol Popover {}
	public protocol Readonly {}
	public protocol Required {}
	public protocol Rowspan {}
	public protocol Size {}
	public protocol Sizes {}
	public protocol Sizing {}
	public protocol Span {}
	public protocol Src {}
	public protocol Srcset {}
	public protocol Target {}
	public protocol `Type` {}
	public protocol Usemap {}
	public protocol Value {}
}

// MARK: -

extension Attribute where Tag: HTML.Tag {

	/// Specifies a shortcut key to activate/focus an element.
	@inlinable public static func accessKey(_ value: consuming Character) -> Self {
		.init(name: "accesskey", value: .init(value))
	}

	/// Specifies that an element should automatically get focus when the page loads.
	@inlinable public static var autofocus: Self {
		.init(name: "autofocus")
	}

	/// Specifies one or more class names for an HTML element.
	@inlinable public static func `class`(_ value: consuming String) -> Self {
		.init(name: "class", value: value)
	}

	/// Specifies one or more class names for an HTML element.
	@inlinable public static func `class`(_ values: consuming [String]) -> Self {
		.class(values.joined(separator: " "))
	}

	/// Specifies one or more class names for an HTML element.
	@inlinable public static func `class`(_ values: String...) -> Self {
		.class(values)
	}

	/// Specifies whether the content of an HTML element is editable or not.
	@inlinable public static func contentEditable(_ value: consuming HTML.ContentEditable) -> Self {
		.init(name: "contenteditable", value: value.rawValue)
	}

	/// Specifies custom data private to the page or application.
	@inlinable public static func data(_ key: consuming String, value: consuming String) -> Self {
		.init(name: "data-\(key)", value: value)
	}

	/// Specifies the direction of the text in an HTML element.
	@inlinable public static func dir(_ value: consuming HTML.TextDirection) -> Self {
		.init(name: "dir", value: value)
	}

	/// Specifies whether an HTML element is draggable or not.
	@inlinable public static func draggable(_ enable: consuming Bool) -> Self {
		.init(name: "draggable", value: enable)
	}

	/// Specifies the enter key on virtual keyboards.
	@inlinable public static func enterKeyHint(_ value: consuming HTML.EnterKeyHint) -> Self {
		.init(name: "enterkeyhint", value: value)
	}

	/// Specifies that an HTML element is hidden.
	@inlinable public static var hidden: Self {
		.init(name: "hidden")
	}

	/// Specifies a unique id for an HTML element.
	@inlinable public static func id(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "id", value: id)
	}

	/// Disables an HTML element and all the elements inside.
	@inlinable public static var inert: Self {
		.init(name: "inert")
	}

	/// Specifies the appearance of the keyboard on a phone or tablet.
	@inlinable public static func inputMode(_ value: consuming HTML.InputMode) -> Self {
		.init(name: "inputmode", value: value)
	}

	/// Specifies the language of the content in an HTML element.
	@inlinable public static func lang(_ value: consuming HTML.Language) -> Self {
		.init(name: "lang", value: value)
	}

	/// Defines an HTML element as a popover element.
	@inlinable public static func popover(_ value: consuming HTML.Popover) -> Self {
		.init(name: "popover", value: value)
	}

	/// Defines an HTML element as a popover element.
	@inlinable public static var popover: Self {
		.init(name: "popover")
	}

	/// Specifies a unique id for an HTML element.
	@inlinable public static func slot(_ name: consuming String) -> Self {
		.init(name: "slot", value: name)
	}

	/// Specifies whether the element is to have its spelling and grammar checked or not.
	@inlinable public static func spellcheck(_ enable: consuming Bool) -> Self {
		.init(name: "spellcheck", value: enable)
	}

	/// Specifies the tab order of an HTML element.
	@inlinable public static func tabIndex(_ value: consuming Int) -> Self {
		.init(name: "tabindex", value: value)
	}

	/// Specifies extra information about an HTML element.
	@inlinable public static func title(_ value: consuming String) -> Self {
		.init(name: "title", value: value)
	}

	/// Specifies whether the content of an HTML element should be translated or not.
	@inlinable public static func translate(_ enable: consuming Bool) -> Self {
		.init(name: "translate", value: enable)
	}
}

// MARK: -

extension HTML.Area: HTML.Trait.Alt {}
extension HTML.Img: HTML.Trait.Alt {}
extension HTML.Input: HTML.Trait.Alt {}

extension Attribute where Tag: HTML.Trait.Alt {

	/// Specifies information for an image if a user for some reason cannot view it.
	@inlinable public static func alt(_ text: consuming String) -> Self {
		.init(name: "alt", value: text)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Autocomplete {}
extension HTML.Select: HTML.Trait.Autocomplete {}
extension HTML.Textarea: HTML.Trait.Autocomplete {}

extension Attribute where Tag: HTML.Trait.Autocomplete {

	/// Specifies the types of autocomplete.
	@inlinable public static func autocomplete(_ value: consuming String) -> Self {
		.init(name: "autocomplete", value: value)
	}

	/// Specifies the types of autocomplete.
	@inlinable public static func autocomplete(_ values: consuming [String]) -> Self {
		.autocomplete(values.joined(separator: " "))
	}

	/// Specifies the types of autocomplete.
	@inlinable public static func autocomplete(_ values: String...) -> Self {
		.autocomplete(values)
	}
}

// MARK: -

extension HTML.Meta: HTML.Trait.Charset {}
extension HTML.Script: HTML.Trait.Charset {}

extension Attribute where Tag: HTML.Trait.Charset {

	/// Specifies the character encoding.
	@inlinable public static func charset(_ encoding: consuming HTML.Charset) -> Self {
		.init(name: "charset", value: encoding)
	}
}

// MARK: -

extension HTML.Blockquote: HTML.Trait.Cite {}
extension HTML.Del: HTML.Trait.Cite {}
extension HTML.Ins: HTML.Trait.Cite {}
extension HTML.Q: HTML.Trait.Cite {}

extension Attribute where Tag: HTML.Trait.Cite {

	// TODO: add support for proper url type
	/// Specifies a URL to a document that explains the quote, or why the text was inserted/changed.
	@inlinable public static func cite(_ url: consuming String) -> Self {
		.init(name: "cite", value: url)
	}
}

// MARK: -

extension HTML.Td: HTML.Trait.Colspan {}
extension HTML.Th: HTML.Trait.Colspan {}

extension Attribute where Tag: HTML.Trait.Colspan {

	/// Specifies the number of columns a cell should span.
	@inlinable public static func colSpan(_ count: consuming Int) -> Self {
		.init(name: "colspan", value: count)
	}
}

// MARK: -

extension HTML.Audio: HTML.Trait.Crossorigin {}
extension HTML.Img: HTML.Trait.Crossorigin {}
extension HTML.Link: HTML.Trait.Crossorigin {}
extension HTML.Script: HTML.Trait.Crossorigin {}
extension HTML.Video: HTML.Trait.Crossorigin {}

extension Attribute where Tag: HTML.Trait.Crossorigin {

	/// Creates a `crossorigin` attribute.
	@inlinable public static var crossOrigin: Self {
		.init(name: "crossorigin")
	}

	/// Creates a `crossorigin` attribute.
	@inlinable public static func crossOrigin(_ value: consuming HTML.CrossOrigin) -> Self {
		.init(name: "crossorigin", value: value)
	}
}

// MARK: -

extension HTML.Del: HTML.Trait.Datetime {}
extension HTML.Ins: HTML.Trait.Datetime {}
extension HTML.Time: HTML.Trait.Datetime {}

extension Attribute where Tag: HTML.Trait.Datetime {

	// TODO: add support for proper date type
	/// Specifies the date and time when the text was deleted/inserted.
	@inlinable public static func dateTime(_ date: consuming String) -> Self {
		.init(name: "datetime", value: date)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Dirname {}
extension HTML.Textarea: HTML.Trait.Dirname {}

extension Attribute where Tag: HTML.Trait.Dirname {

	/// Specifies that the text direction will be submitted.
	@inlinable public static func dirName(_ name: consuming String) -> Self {
		.init(name: "dirname", value: name)
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Disabled {}
extension HTML.Fieldset: HTML.Trait.Disabled {}
extension HTML.Input: HTML.Trait.Disabled {}
extension HTML.Optgroup: HTML.Trait.Disabled {}
extension HTML.Option: HTML.Trait.Disabled {}
extension HTML.Select: HTML.Trait.Disabled {}
extension HTML.Textarea: HTML.Trait.Disabled {}

extension Attribute where Tag: HTML.Trait.Disabled {

	/// Specifies that the element should be disabled.
	@inlinable public static var disabled: Self {
		.init(name: "disabled")
	}
}

// MARK: -

extension HTML.A: HTML.Trait.Download {}
extension HTML.Area: HTML.Trait.Download {}

extension Attribute where Tag: HTML.Trait.Download {

	/// Specifies that the target will be downloaded when a user clicks on the hyperlink.
	@inlinable public static var download: Self {
		.init(name: "download")
	}
}

// MARK: -

extension HTML.Label: HTML.Trait.For {}
extension HTML.Output: HTML.Trait.For {}

extension Attribute where Tag: HTML.Trait.For {

	/// Specifies the relationship between the element and a form control.
	@inlinable public static func `for`(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "for", value: id)
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Form {}
extension HTML.Fieldset: HTML.Trait.Form {}
extension HTML.Input: HTML.Trait.Form {}
extension HTML.Label: HTML.Trait.Form {}
extension HTML.Meter: HTML.Trait.Form {}
extension HTML.Object: HTML.Trait.Form {}
extension HTML.Output: HTML.Trait.Form {}
extension HTML.Select: HTML.Trait.Form {}
extension HTML.Textarea: HTML.Trait.Form {}

extension Attribute where Tag: HTML.Trait.Form {

	/// Specifies the form the element belongs to.
	@inlinable public static func form(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "form", value: id)
	}

	/// Specifies the form the element belongs to.
	@inlinable public static func form(_ ids: consuming [HTML.Identifier]) -> Self {
		.init(name: "form", values: ids, separator: " ")
	}

	/// Specifies the form the element belongs to.
	@inlinable public static func form(_ ids: HTML.Identifier...) -> Self {
		.init(name: "form", values: ids, separator: " ")
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Formaction {}
extension HTML.Input: HTML.Trait.Formaction {}

extension Attribute where Tag: HTML.Trait.Formaction {

	/// Specifies where to send the form-data when a form is submitted.
	@inlinable public static func formAction(_ url: consuming String) -> Self {
		.init(name: "formaction", value: url)
	}
}

// MARK: -

extension HTML.Td: HTML.Trait.Headers {}
extension HTML.Th: HTML.Trait.Headers {}

extension Attribute where Tag: HTML.Trait.Headers {

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "headers", value: id)
	}

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ ids: consuming [HTML.Identifier]) -> Self {
		.init(name: "headers", values: ids, separator: " ")
	}

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ ids: HTML.Identifier...) -> Self {
		.init(name: "headers", values: ids, separator: " ")
	}
}

// MARK: -

extension HTML.A: HTML.Trait.Href {}
extension HTML.Area: HTML.Trait.Href {}
extension HTML.Base: HTML.Trait.Href {}
extension HTML.Link: HTML.Trait.Href {}

extension Attribute where Tag: HTML.Trait.Href {

	// TODO: add support for proper url type
	/// Specifies the URL of the page the link goes to.
	@inlinable public static func href(_ url: consuming String) -> Self {
		.init(name: "href", value: url)
	}
}

// MARK: -

extension HTML.A: HTML.Trait.Hreflang {}
extension HTML.Area: HTML.Trait.Hreflang {}
extension HTML.Link: HTML.Trait.Hreflang {}

extension Attribute where Tag: HTML.Trait.Hreflang {

	/// Specifies the language of the linked document.
	@inlinable public static func hrefLang(_ language: consuming HTML.Language) -> Self {
		.init(name: "hreflang", value: language)
	}
}

// MARK: -

extension HTML.Track: HTML.Trait.Label {}
extension HTML.Option: HTML.Trait.Label {}
extension HTML.Optgroup: HTML.Trait.Label {}

extension Attribute where Tag: HTML.Trait.Label {

	/// Specifies a label.
	@inlinable public static func label(_ text: consuming String) -> Self {
		.init(name: "label", value: text)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Max {}
extension HTML.Meter: HTML.Trait.Max {}
extension HTML.Progress: HTML.Trait.Max {}

extension Attribute where Tag: HTML.Trait.Max {

	/// Specifies how much work the task requires in total.
	@inlinable public static func max(_ value: consuming Int) -> Self {
		.init(name: "max", value: value)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Maxlength {}
extension HTML.Textarea: HTML.Trait.Maxlength {}

extension Attribute where Tag: HTML.Trait.Maxlength {

	/// Specifies the maximum number of characters allowed in the element.
	@inlinable public static func maxLength(_ count: consuming Int) -> Self {
		.init(name: "maxlength", value: count)
	}
}

// MARK: -

extension HTML.A: HTML.Trait.Media {}
extension HTML.Area: HTML.Trait.Media {}
extension HTML.Link: HTML.Trait.Media {}
extension HTML.Source: HTML.Trait.Media {}

extension Attribute where Tag: HTML.Trait.Media {

	/// Specifies what media/device the linked document is optimized for.
	@inlinable public static func media(_ query: consuming String) -> Self {
		.init(name: "media", value: query)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Min {}
extension HTML.Meter: HTML.Trait.Min {}

extension Attribute where Tag: HTML.Trait.Min {

	/// Specifies how much work the task requires in total.
	@inlinable public static func min(_ value: consuming Int) -> Self {
		.init(name: "min", value: value)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Multiple {}
extension HTML.Select: HTML.Trait.Multiple {}

extension Attribute where Tag: HTML.Trait.Multiple {

	/// Specifies that the user is allowed to enter/select more than one value.
	@inlinable public static var multiple: Self {
		.init(name: "multiple")
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Name {}
extension HTML.Fieldset: HTML.Trait.Name {}
extension HTML.Form: HTML.Trait.Name {}
extension HTML.Iframe: HTML.Trait.Name {}
extension HTML.Input: HTML.Trait.Name {}
extension HTML.Map: HTML.Trait.Name {}
extension HTML.Meta: HTML.Trait.Name {}
extension HTML.Object: HTML.Trait.Name {}
extension HTML.Output: HTML.Trait.Name {}
extension HTML.Select: HTML.Trait.Name {}
extension HTML.Textarea: HTML.Trait.Name {}

extension Attribute where Tag: HTML.Trait.Name {

	/// Specifies the name of the element. Can be used to reference the element in a JavaScript.
	@inlinable public static func name(_ name: consuming String) -> Self {
		.init(name: "name", value: name)
	}
}

// MARK: -

extension HTML.Details: HTML.Trait.Open {}
extension HTML.Dialog: HTML.Trait.Open {}

extension Attribute where Tag: HTML.Trait.Open {

	/// Specifies that the element is opened and the user can interact with it.
	@inlinable public static var open: Self {
		.init(name: "open")
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Placeholder {}
extension HTML.Textarea: HTML.Trait.Placeholder {}

extension Attribute where Tag: HTML.Trait.Placeholder {

	/// Specifies a short hint that describes the expected value of an input field or a textarea.
	@inlinable public static func placeholder(_ text: consuming String) -> Self {
		.init(name: "placeholder", value: text)
	}
}

// MARK: -

extension HTML.Audio: HTML.Trait.Playback {}
extension HTML.Video: HTML.Trait.Playback {}

extension Attribute where Tag: HTML.Trait.Playback {

	/// Specifies that the audio or video will start playing as soon as it is ready.
	@inlinable public static var autoplay: Self {
		.init(name: "autoplay")
	}

	/// Specifies that audio/video controls should be displayed.
	@inlinable public static var controls: Self {
		.init(name: "controls")
	}

	/// Specifies that playback will start over again, every time it is finished.
	@inlinable public static var loop: Self {
		.init(name: "loop")
	}

	/// Specifies that the audio or video should be muted.
	@inlinable public static var muted: Self {
		.init(name: "muted")
	}

	/// Specifies if and how the author thinks that the media file should be loaded when the page loads.
	@inlinable public static func preload(_ value: consuming HTML.Preload) -> Self {
		.init(name: "preload", value: value)
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Popover {}
extension HTML.Input: HTML.Trait.Popover {}

extension Attribute where Tag: HTML.Trait.Popover {

	/// Specifies the popover target that will be shown when the user clicks on the element.
	@inlinable public static func popover(target: consuming HTML.Identifier) -> Self {
		.init(name: "popovertarget", value: target)
	}

	/// Specifies the popover action that will be performed when the user clicks on the element.
	@inlinable public static func popover(action: consuming HTML.PopoverAction) -> Self {
		.init(name: "popovertargetaction", value: action)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Readonly {}
extension HTML.Textarea: HTML.Trait.Readonly {}

extension Attribute where Tag: HTML.Trait.Readonly {

	/// Specifies that the element is read-only.
	@inlinable public static var readOnly: Self {
		.init(name: "readonly")
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Required {}
extension HTML.Select: HTML.Trait.Required {}
extension HTML.Textarea: HTML.Trait.Required {}

extension Attribute where Tag: HTML.Trait.Required {

	/// Specifies that the element must be filled out before submitting the form.
	@inlinable public static var required: Self {
		.init(name: "required")
	}
}

// MARK: -

extension HTML.Td: HTML.Trait.Rowspan {}
extension HTML.Th: HTML.Trait.Rowspan {}

extension Attribute where Tag: HTML.Trait.Rowspan {

	/// Specifies the number of rows a table cell should span.
	@inlinable public static func rowSpan(_ count: consuming Int) -> Self {
		.init(name: "rowspan", value: count)
	}
}

// MARK: -

extension HTML.Input: HTML.Trait.Size {}
extension HTML.Select: HTML.Trait.Size {}

extension Attribute where Tag: HTML.Trait.Size {

	/// Specifies the for the visible content.
	@inlinable public static func size(_ count: consuming Int) -> Self {
		.init(name: "size", value: count)
	}
}

// MARK: -

extension HTML.Img: HTML.Trait.Sizes {}
extension HTML.Link: HTML.Trait.Sizes {}
extension HTML.Source: HTML.Trait.Sizes {}

extension Attribute where Tag: HTML.Trait.Sizes {

	/// Specifies the size of the linked resource.
	@inlinable public static func sizes(_ value: consuming String) -> Self {
		.init(name: "sizes", value: value)
	}
}

// MARK: -

extension HTML.Canvas: HTML.Trait.Sizing {}
extension HTML.Embed: HTML.Trait.Sizing {}
extension HTML.Iframe: HTML.Trait.Sizing {}
extension HTML.Img: HTML.Trait.Sizing {}
extension HTML.Input: HTML.Trait.Sizing {}
extension HTML.Object: HTML.Trait.Sizing {}
extension HTML.Video: HTML.Trait.Sizing {}

extension Attribute where Tag: HTML.Trait.Sizing {

	/// Specifies the width of the element.
	@inlinable public static func width(_ pixels: consuming Int) -> Self {
		.init(name: "width", value: pixels)
	}

	/// Specifies the height of the element, in pixels.
	@inlinable public static func height(_ pixels: consuming Int) -> Self {
		.init(name: "height", value: pixels)
	}
}

// MARK: -

extension HTML.Col: HTML.Trait.Span {}
extension HTML.Colgroup: HTML.Trait.Span {}

extension Attribute where Tag: HTML.Trait.Span {

	/// Specifies the number of columns to span.
	@inlinable public static func span(_ count: consuming Int) -> Self {
		.init(name: "span", value: count)
	}
}

// MARK: -

extension HTML.Audio: HTML.Trait.Src {}
extension HTML.Embed: HTML.Trait.Src {}
extension HTML.Iframe: HTML.Trait.Src {}
extension HTML.Img: HTML.Trait.Src {}
extension HTML.Input: HTML.Trait.Src {}
extension HTML.Script: HTML.Trait.Src {}
extension HTML.Source: HTML.Trait.Src {}
extension HTML.Track: HTML.Trait.Src {}
extension HTML.Video: HTML.Trait.Src {}

extension Attribute where Tag: HTML.Trait.Src {

	/// Specifies the URL of the media file.
	@inlinable public static func src(_ url: consuming String) -> Self {
		.init(name: "src", value: url)
	}
}

// MARK: -

extension HTML.Img: HTML.Trait.Srcset {}
extension HTML.Source: HTML.Trait.Srcset {}

extension Attribute where Tag: HTML.Trait.Srcset {

	/// Specifies the URL of the image to use in different situations.
	@inlinable public static func srcSet(_ value: consuming String) -> Self {
		.init(name: "srcset", value: value)
	}
}

// MARK: -

extension HTML.A: HTML.Trait.Target {}
extension HTML.Area: HTML.Trait.Target {}
extension HTML.Base: HTML.Trait.Target {}
extension HTML.Form: HTML.Trait.Target {}

extension Attribute where Tag: HTML.Trait.Target {

	/// Specifies the target for where to open the linked document or where to submit the form.
	@inlinable public static func target(_ value: consuming HTML.Target) -> Self {
		.init(name: "target", value: value)
	}
}

// MARK: -

extension HTML.A: HTML.Trait.`Type` {}
extension HTML.Embed: HTML.Trait.`Type` {}
extension HTML.Link: HTML.Trait.`Type` {}
extension HTML.Object: HTML.Trait.`Type` {}
extension HTML.Script: HTML.Trait.`Type` {}
extension HTML.Source: HTML.Trait.`Type` {}

extension Attribute where Tag: HTML.Trait.`Type` {

	/// Specifies the type of element.
	@inlinable public static func type(_ value: consuming String) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension HTML.Img: HTML.Trait.Usemap {}
extension HTML.Object: HTML.Trait.Usemap {}

extension Attribute where Tag: HTML.Trait.Usemap {

	/// Specifies an image as a client-side image map.
	@inlinable public static func useMap(_ name: consuming String) -> Self {
		.init(name: "usemap", value: name)
	}
}

// MARK: -

extension HTML.Button: HTML.Trait.Value {}
extension HTML.Data: HTML.Trait.Value {}
extension HTML.Input: HTML.Trait.Value {}
extension HTML.Li: HTML.Trait.Value {}
extension HTML.Option: HTML.Trait.Value {}
extension HTML.Meter: HTML.Trait.Value {}
extension HTML.Progress: HTML.Trait.Value {}

extension Attribute where Tag: HTML.Trait.Value {

	/// Specifies the value of the element.
	@inlinable public static func value(_ value: consuming String) -> Self {
		.init(name: "value", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.A {

	/// Specifies the relationship of the `<a>` element.
	@inlinable public static func rel(_ value: consuming HTML.HyperlinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Area {

	// TODO: add support for proper coords type
	/// Specifies the coordinates of an area in an image map.
	@inlinable public static func coords(_ value: consuming String) -> Self {
		.init(name: "coords", value: value)
	}

	/// Specifies the relationship of the `<area>` element.
	@inlinable public static func rel(_ value: consuming HTML.HyperlinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}

	/// Specifies the shape of an area in an image map.
	@inlinable public static func shape(_ value: consuming HTML.AreaShape) -> Self {
		.init(name: "shape", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Button {

	//TODO: update value if possible
	/// Specifies the button command.
	@inlinable public static func command(_ value: consuming String) -> Self {
		.init(name: "command", value: value)
	}

	/// Specifies the commands target.
	@inlinable public static func commandFor(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "commandfor", value: id)
	}

	/// Specifies the button type.
	@inlinable public static func type(_ value: consuming HTML.ButtonType) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Form {

	/// Specifies the character encodings that are to be used for the form submission.
	@inlinable public static func acceptCharset(_ value: consuming String) -> Self {
		.init(name: "accept-charset", value: value)
	}

	/// Specifies where to send the form-data when a form is submitted.
	@inlinable public static func action(_ value: consuming String) -> Self {
		.init(name: "action", value: value)
	}

	/// Specifies whether autocomplete should be on or off.
	@inlinable public static func autocomplete(_ value: consuming HTML.Autocomplete) -> Self {
		.init(name: "autocomplete", value: value)
	}

	/// Specifies how the form-data should be encoded.
	@inlinable public static func encType(_ value: consuming HTML.EncType) -> Self {
		.init(name: "enctype", value: value)
	}

	/// Specifies the HTTP method to use when submitting the form.
	@inlinable public static func method(_ value: consuming HTML.FormMethod) -> Self {
		.init(name: "method", value: value)
	}

	/// Specifies that the form should not be validated when submitted.
	@inlinable public static var noValidate: Self {
		.init(name: "novalidate")
	}

	/// Specifies the relationship of the `<form>` element.
	@inlinable public static func rel(_ value: consuming HTML.FormRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Iframe {

	// TODO: add support for proper sandboxing
	/// Enables an extra set of restrictions.
	@inlinable public static func sandbox(_ value: consuming String) -> Self {
		.init(name: "sandbox", value: value)
	}

	// TODO: add support for html input
	/// Specifies the HTML content of the page to show.
	@inlinable public static func srcDoc(_ value: consuming String) -> Self {
		.init(name: "srcdoc", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Input {

	/// Specifies the types of files that the server accepts (only for type="file").
	@inlinable public static func accept(_ value: consuming String) -> Self {
		.init(name: "accept", value: value)
	}

	/// Specifies that an input element is pre-selected.
	@inlinable public static var checked: Self {
		.init(name: "checked")
	}

	/// Specifies the datalist associated with an input element.
	@inlinable public static func list(_ id: consuming HTML.Identifier) -> Self {
		.init(name: "list", value: id)
	}

	/// Specifies a regular expression that the value is checked against.
	@inlinable public static func pattern(_ value: consuming String) -> Self {
		.init(name: "pattern", value: value)
	}

	/// Specifies the legal number intervals.
	@inlinable public static func step(_ value: consuming Int) -> Self {
		.init(name: "step", value: value)
	}

	/// Specifies the input type.
	@inlinable public static func type(_ value: consuming HTML.InputType) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Img {

	/// Specifies that the image is part of a server-side image map.
	@inlinable public static var isMap: Self {
		.init(name: "ismap")
	}
}

// MARK: -

extension Attribute where Tag == HTML.Link {

	/// Specifies the relationship of the `<link>` element.
	@inlinable public static func rel(_ value: consuming HTML.LinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Meta {

	/// Specifies the value associated with the http-equiv or name attribute.
	@inlinable public static func content(_ value: consuming String) -> Self {
		.init(name: "content", value: value)
	}

	/// Specifies an HTTP header for the information/value of the content attribute.
	@inlinable public static func httpEquiv(_ value: consuming String) -> Self {
		.init(name: "http-equiv", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Meter {

	/// Specifies the range where the gauge's value is considered to be a high value.
	@inlinable public static func high(_ value: consuming Int) -> Self {
		.init(name: "high", value: value)
	}

	/// Specifies the range where the gauge's value is considered to be a low value.
	@inlinable public static func low(_ value: consuming Int) -> Self {
		.init(name: "low", value: value)
	}

	/// Specifies the range where the gauge's value is considered to be an optimal value.
	@inlinable public static func optimum(_ value: consuming Int) -> Self {
		.init(name: "optimum", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Object {

	/// Specifies the URL of the resource to be used by the object.
	@inlinable public static func data(_ value: consuming String) -> Self {
		.init(name: "data", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Option {

	/// Specifies that an option should be pre-selected when the page loads.
	@inlinable public static var selected: Self {
		.init(name: "selected")
	}
}

// MARK: -

extension Attribute where Tag == HTML.Output {

	/// Specifies the relationship between the element and a form control.
	@inlinable public static func `for`(_ ids: consuming [HTML.Identifier]) -> Self {
		.init(name: "for", values: ids, separator: " ")
	}

	/// Specifies the relationship between the element and a form control.
	@inlinable public static func `for`(_ ids: HTML.Identifier...) -> Self {
		.init(name: "for", values: ids, separator: " ")
	}
}

// MARK: -

extension Attribute where Tag == HTML.Ol {

	/// Specifies that the list order should be descending (9, 8, 7, etc.).
	@inlinable public static var reversed: Self {
		.init(name: "reversed")
	}

	/// Specifies the start value of an ordered list.
	@inlinable public static func start(_ value: consuming Int) -> Self {
		.init(name: "start", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Script {

	/// Specifies that the script will be executed asynchronously as soon as it is available.
	@inlinable public static var async: Self {
		.init(name: "async")
	}

	/// Specifies that the script is executed when the page has finished parsing.
	@inlinable public static var `defer`: Self {
		.init(name: "defer")
	}
}

// MARK: -

extension Attribute where Tag == HTML.Textarea {

	/// Specifies the visible width of a text area.
	@inlinable public static func cols(_ value: consuming Int) -> Self {
		.init(name: "cols", value: value)
	}

	/// Specifies the visible height of a text area, in lines.
	@inlinable public static func rows(_ value: consuming Int) -> Self {
		.init(name: "rows", value: value)
	}

	/// Specifies how the text in a text area is to be wrapped when submitted in a form.
	@inlinable public static func wrap(_ value: consuming String) -> Self {
		.init(name: "wrap", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Th {

	/// Specifies whether a header cell is a header for a column, row, or group of columns or rows.
	@inlinable public static func scope(_ value: consuming HTML.Scope) -> Self {
		.init(name: "scope", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Track {

	/// Specifies that the track is to be enabled.
	@inlinable public static var `default`: Self {
		.init(name: "default")
	}

	/// Specifies the kind of text track.
	@inlinable public static func kind(_ value: consuming HTML.TrackKind) -> Self {
		.init(name: "kind", value: value)
	}

	/// Specifies the language of the track text data.
	@inlinable public static func srcLang(_ value: consuming String) -> Self {
		.init(name: "srclang", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTML.Video {

	/// Specifies an image to be shown while the video is downloading, or until the user hits the play button.
	/// If this is not included, the first frame of the video will be used instead.
	@inlinable public static func poster(_ value: consuming String) -> Self {
		.init(name: "poster", value: value)
	}
}
