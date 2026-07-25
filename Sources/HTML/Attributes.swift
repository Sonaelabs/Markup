//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public enum HTMLAttributes {
	public protocol Alt {}
	public protocol Autocomplete {}
	public protocol Charset {}
	public protocol Cite {}
	public protocol Colspan {}
	public protocol DateTime {}
	public protocol DirName {}
	public protocol Disabled {}
	public protocol Download {}
	public protocol For {}
	public protocol Form {}
	public protocol FormAction {}
	public protocol Headers {}
	public protocol Href {}
	public protocol HrefLang {}
	public protocol Label {}
	public protocol Max {}
	public protocol MaxLength {}
	public protocol Media {}
	public protocol Min {}
	public protocol Multiple {}
	public protocol Name {}
	public protocol Open {}
	public protocol Placeholder {}
	public protocol Playback {}
	public protocol Popover {}
	public protocol ReadOnly {}
	public protocol Required {}
	public protocol RowSpan {}
	public protocol Size {}
	public protocol Sizes {}
	public protocol Sizing {}
	public protocol Span {}
	public protocol Src {}
	public protocol SrcSet {}
	public protocol Target {}
	public protocol MediaType {}
	public protocol UseMap {}
	public protocol Value {}
}

// MARK: -

extension Attribute where Tag: HTML {

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
	@inlinable public static func contentEditable(_ value: consuming ContentEditable) -> Self {
		.init(name: "contenteditable", value: value.rawValue)
	}

	/// Specifies custom data private to the page or application.
	@inlinable public static func data(_ key: consuming String, value: consuming String) -> Self {
		.init(name: "data-\(key)", value: value)
	}

	/// Specifies the direction of the text in an HTML element.
	@inlinable public static func dir(_ value: consuming TextDirection) -> Self {
		.init(name: "dir", value: value)
	}

	/// Specifies whether an HTML element is draggable or not.
	@inlinable public static func draggable(_ enable: consuming Bool) -> Self {
		.init(name: "draggable", value: enable)
	}

	/// Specifies the enter key on virtual keyboards.
	@inlinable public static func enterKeyHint(_ value: consuming EnterKeyHint) -> Self {
		.init(name: "enterkeyhint", value: value)
	}

	/// Specifies that an HTML element is hidden.
	@inlinable public static var hidden: Self {
		.init(name: "hidden")
	}

	/// Specifies a unique id for an HTML element.
	@inlinable public static func id(_ value: consuming String) -> Self {
		.init(name: "id", value: value)
	}

	/// Disables an HTML element and all the elements inside.
	@inlinable public static var inert: Self {
		.init(name: "inert")
	}

	/// Specifies the appearance of the keyboard on a phone or tablet.
	@inlinable public static func inputMode(_ value: consuming InputMode) -> Self {
		.init(name: "inputmode", value: value)
	}

	/// Specifies the language of the content in an HTML element.
	@inlinable public static func lang(_ value: consuming Language) -> Self {
		.init(name: "lang", value: value)
	}

	/// Defines an HTML element as a popover element.
	@inlinable public static func popover(_ value: consuming Popover) -> Self {
		.init(name: "popover", value: value)
	}

	/// Defines an HTML element as a popover element.
	@inlinable public static var popover: Self {
		.init(name: "popover")
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

extension HTMLTag.area: HTMLAttributes.Alt {}
extension HTMLTag.img: HTMLAttributes.Alt {}
extension HTMLTag.input: HTMLAttributes.Alt {}

extension Attribute where Tag: HTMLAttributes.Alt {

	/// Specifies information for an image if a user for some reason cannot view it.
	@inlinable public static func alt(_ text: consuming String) -> Self {
		.init(name: "alt", value: text)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Autocomplete {}
extension HTMLTag.select: HTMLAttributes.Autocomplete {}
extension HTMLTag.textarea: HTMLAttributes.Autocomplete {}

extension Attribute where Tag: HTMLAttributes.Autocomplete {

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

extension HTMLTag.meta: HTMLAttributes.Charset {}
extension HTMLTag.script: HTMLAttributes.Charset {}

extension Attribute where Tag: HTMLAttributes.Charset {

	/// Specifies the character encoding.
	@inlinable public static func charset(_ encoding: consuming Charset) -> Self {
		.init(name: "charset", value: encoding)
	}
}

// MARK: -

extension HTMLTag.blockquote: HTMLAttributes.Cite {}
extension HTMLTag.del: HTMLAttributes.Cite {}
extension HTMLTag.ins: HTMLAttributes.Cite {}
extension HTMLTag.q: HTMLAttributes.Cite {}

extension Attribute where Tag: HTMLAttributes.Cite {

	// TODO: add support for proper url type
	/// Specifies a URL to a document that explains the quote, or why the text was inserted/changed.
	@inlinable public static func cite(_ url: consuming String) -> Self {
		.init(name: "cite", value: url)
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.Colspan {}
extension HTMLTag.th: HTMLAttributes.Colspan {}

extension Attribute where Tag: HTMLAttributes.Colspan {

	/// Specifies the number of columns a cell should span.
	@inlinable public static func colSpan(_ count: consuming Int) -> Self {
		.init(name: "colspan", value: count)
	}
}

// MARK: -

extension HTMLTag.del: HTMLAttributes.DateTime {}
extension HTMLTag.ins: HTMLAttributes.DateTime {}
extension HTMLTag.time: HTMLAttributes.DateTime {}

extension Attribute where Tag: HTMLAttributes.DateTime {

	// TODO: add support for proper date type
	/// Specifies the date and time when the text was deleted/inserted.
	@inlinable public static func dateTime(_ date: consuming String) -> Self {
		.init(name: "datetime", value: date)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.DirName {}
extension HTMLTag.textarea: HTMLAttributes.DirName {}

extension Attribute where Tag: HTMLAttributes.DirName {

	/// Specifies that the text direction will be submitted.
	@inlinable public static func dirName(_ name: consuming String) -> Self {
		.init(name: "dirname", value: name)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.Disabled {}
extension HTMLTag.fieldset: HTMLAttributes.Disabled {}
extension HTMLTag.input: HTMLAttributes.Disabled {}
extension HTMLTag.optgroup: HTMLAttributes.Disabled {}
extension HTMLTag.option: HTMLAttributes.Disabled {}
extension HTMLTag.select: HTMLAttributes.Disabled {}
extension HTMLTag.textarea: HTMLAttributes.Disabled {}

extension Attribute where Tag: HTMLAttributes.Disabled {

	/// Specifies that the element should be disabled.
	@inlinable public static var disabled: Self {
		.init(name: "disabled")
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.Download {}
extension HTMLTag.area: HTMLAttributes.Download {}

extension Attribute where Tag: HTMLAttributes.Download {

	/// Specifies that the target will be downloaded when a user clicks on the hyperlink.
	@inlinable public static var download: Self {
		.init(name: "download")
	}
}

// MARK: -

extension HTMLTag.label: HTMLAttributes.For {}
extension HTMLTag.output: HTMLAttributes.For {}

extension Attribute where Tag: HTMLAttributes.For {

	/// Specifies the relationship between the element and a form control.
	@inlinable public static func `for`(_ id: consuming String) -> Self {
		.init(name: "for", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.Form {}
extension HTMLTag.fieldset: HTMLAttributes.Form {}
extension HTMLTag.input: HTMLAttributes.Form {}
extension HTMLTag.label: HTMLAttributes.Form {}
extension HTMLTag.meter: HTMLAttributes.Form {}
extension HTMLTag.object: HTMLAttributes.Form {}
extension HTMLTag.output: HTMLAttributes.Form {}
extension HTMLTag.select: HTMLAttributes.Form {}
extension HTMLTag.textarea: HTMLAttributes.Form {}

extension Attribute where Tag: HTMLAttributes.Form {

	/// Specifies the form the element belongs to.
	@inlinable public static func form(_ id: consuming String) -> Self {
		.init(name: "form", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.FormAction {}
extension HTMLTag.input: HTMLAttributes.FormAction {}

extension Attribute where Tag: HTMLAttributes.FormAction {

	/// Specifies where to send the form-data when a form is submitted.
	@inlinable public static func formAction(_ url: consuming String) -> Self {
		.init(name: "formaction", value: url)
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.Headers {}
extension HTMLTag.th: HTMLAttributes.Headers {}

extension Attribute where Tag: HTMLAttributes.Headers {

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ value: consuming String) -> Self {
		.init(name: "headers", value: value)
	}

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ values: consuming [String]) -> Self {
		.headers(values.joined(separator: " "))
	}

	/// Specifies one or more header cells a table cell is related to.
	@inlinable public static func headers(_ values: String...) -> Self {
		.headers(values)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.Href {}
extension HTMLTag.area: HTMLAttributes.Href {}
extension HTMLTag.base: HTMLAttributes.Href {}
extension HTMLTag.link: HTMLAttributes.Href {}

extension Attribute where Tag: HTMLAttributes.Href {

	// TODO: add support for proper url type
	/// Specifies the URL of the page the link goes to.
	@inlinable public static func href(_ url: consuming String) -> Self {
		.init(name: "href", value: url)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.HrefLang {}
extension HTMLTag.area: HTMLAttributes.HrefLang {}
extension HTMLTag.link: HTMLAttributes.HrefLang {}

extension Attribute where Tag: HTMLAttributes.HrefLang {

	/// Specifies the language of the linked document.
	@inlinable public static func hrefLang(_ language: consuming Language) -> Self {
		.init(name: "hreflang", value: language)
	}
}

// MARK: -

extension HTMLTag.track: HTMLAttributes.Label {}
extension HTMLTag.option: HTMLAttributes.Label {}
extension HTMLTag.optgroup: HTMLAttributes.Label {}

extension Attribute where Tag: HTMLAttributes.Label {

	/// Specifies a label.
	@inlinable public static func label(_ text: consuming String) -> Self {
		.init(name: "label", value: text)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Max {}
extension HTMLTag.meter: HTMLAttributes.Max {}
extension HTMLTag.progress: HTMLAttributes.Max {}

extension Attribute where Tag: HTMLAttributes.Max {

	/// Specifies how much work the task requires in total.
	@inlinable public static func max(_ value: consuming Int) -> Self {
		.init(name: "max", value: value)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.MaxLength {}
extension HTMLTag.textarea: HTMLAttributes.MaxLength {}

extension Attribute where Tag: HTMLAttributes.MaxLength {

	/// Specifies the maximum number of characters allowed in the element.
	@inlinable public static func maxLength(_ count: consuming Int) -> Self {
		.init(name: "maxlength", value: count)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.Media {}
extension HTMLTag.area: HTMLAttributes.Media {}
extension HTMLTag.link: HTMLAttributes.Media {}
extension HTMLTag.source: HTMLAttributes.Media {}

extension Attribute where Tag: HTMLAttributes.Media {

	/// Specifies what media/device the linked document is optimized for.
	@inlinable public static func media(_ query: consuming String) -> Self {
		.init(name: "media", value: query)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Min {}
extension HTMLTag.meter: HTMLAttributes.Min {}

extension Attribute where Tag: HTMLAttributes.Min {

	/// Specifies how much work the task requires in total.
	@inlinable public static func min(_ value: consuming Int) -> Self {
		.init(name: "min", value: value)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Multiple {}
extension HTMLTag.select: HTMLAttributes.Multiple {}

extension Attribute where Tag: HTMLAttributes.Multiple {

	/// Specifies that the user is allowed to enter/select more than one value.
	@inlinable public static var multiple: Self {
		.init(name: "multiple")
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.Name {}
extension HTMLTag.fieldset: HTMLAttributes.Name {}
extension HTMLTag.form: HTMLAttributes.Name {}
extension HTMLTag.iframe: HTMLAttributes.Name {}
extension HTMLTag.input: HTMLAttributes.Name {}
extension HTMLTag.map: HTMLAttributes.Name {}
extension HTMLTag.meta: HTMLAttributes.Name {}
extension HTMLTag.object: HTMLAttributes.Name {}
extension HTMLTag.output: HTMLAttributes.Name {}
extension HTMLTag.select: HTMLAttributes.Name {}
extension HTMLTag.textarea: HTMLAttributes.Name {}

extension Attribute where Tag: HTMLAttributes.Name {

	/// Specifies the name of the element. Can be used to reference the element in a JavaScript.
	@inlinable public static func name(_ name: consuming String) -> Self {
		.init(name: "name", value: name)
	}
}

// MARK: -

extension HTMLTag.details: HTMLAttributes.Open {}
extension HTMLTag.dialog: HTMLAttributes.Open {}

extension Attribute where Tag: HTMLAttributes.Open {

	/// Specifies that the element is opened and the user can interact with it.
	@inlinable public static var open: Self {
		.init(name: "open")
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Placeholder {}
extension HTMLTag.textarea: HTMLAttributes.Placeholder {}

extension Attribute where Tag: HTMLAttributes.Placeholder {

	/// Specifies a short hint that describes the expected value of an input field or a textarea.
	@inlinable public static func placeholder(_ text: consuming String) -> Self {
		.init(name: "placeholder", value: text)
	}
}

// MARK: -

extension HTMLTag.audio: HTMLAttributes.Playback {}
extension HTMLTag.video: HTMLAttributes.Playback {}

extension Attribute where Tag: HTMLAttributes.Playback {

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
	@inlinable public static func preload(_ value: consuming Preload) -> Self {
		.init(name: "preload", value: value)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.Popover {}
extension HTMLTag.input: HTMLAttributes.Popover {}

extension Attribute where Tag: HTMLAttributes.Popover {

	/// Specifies the popover target that will be shown when the user clicks on the element.
	@inlinable public static func popover(target: consuming String) -> Self {
		.init(name: "popovertarget", value: target)
	}

	/// Specifies the popover action that will be performed when the user clicks on the element.
	@inlinable public static func popover(action: consuming PopoverAction) -> Self {
		.init(name: "popovertargetaction", value: action)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.ReadOnly {}
extension HTMLTag.textarea: HTMLAttributes.ReadOnly {}

extension Attribute where Tag: HTMLAttributes.ReadOnly {

	/// Specifies that the element is read-only.
	@inlinable public static var readOnly: Self {
		.init(name: "readonly")
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Required {}
extension HTMLTag.select: HTMLAttributes.Required {}
extension HTMLTag.textarea: HTMLAttributes.Required {}

extension Attribute where Tag: HTMLAttributes.Required {

	/// Specifies that the element must be filled out before submitting the form.
	@inlinable public static var required: Self {
		.init(name: "required")
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.RowSpan {}
extension HTMLTag.th: HTMLAttributes.RowSpan {}

extension Attribute where Tag: HTMLAttributes.RowSpan {

	/// Specifies the number of rows a table cell should span.
	@inlinable public static func rowSpan(_ count: consuming Int) -> Self {
		.init(name: "rowspan", value: count)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.Size {}
extension HTMLTag.select: HTMLAttributes.Size {}

extension Attribute where Tag: HTMLAttributes.Size {

	/// Specifies the for the visible content.
	@inlinable public static func size(_ count: consuming Int) -> Self {
		.init(name: "size", value: count)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.Sizes {}
extension HTMLTag.link: HTMLAttributes.Sizes {}
extension HTMLTag.source: HTMLAttributes.Sizes {}

extension Attribute where Tag: HTMLAttributes.Sizes {

	/// Specifies the size of the linked resource.
	@inlinable public static func sizes(_ value: consuming String) -> Self {
		.init(name: "sizes", value: value)
	}
}

// MARK: -

extension HTMLTag.canvas: HTMLAttributes.Sizing {}
extension HTMLTag.embed: HTMLAttributes.Sizing {}
extension HTMLTag.iframe: HTMLAttributes.Sizing {}
extension HTMLTag.img: HTMLAttributes.Sizing {}
extension HTMLTag.input: HTMLAttributes.Sizing {}
extension HTMLTag.object: HTMLAttributes.Sizing {}
extension HTMLTag.video: HTMLAttributes.Sizing {}

extension Attribute where Tag: HTMLAttributes.Sizing {

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

extension HTMLTag.col: HTMLAttributes.Span {}
extension HTMLTag.colgroup: HTMLAttributes.Span {}

extension Attribute where Tag: HTMLAttributes.Span {

	/// Specifies the number of columns to span.
	@inlinable public static func span(_ count: consuming Int) -> Self {
		.init(name: "span", value: count)
	}
}

// MARK: -

extension HTMLTag.audio: HTMLAttributes.Src {}
extension HTMLTag.embed: HTMLAttributes.Src {}
extension HTMLTag.iframe: HTMLAttributes.Src {}
extension HTMLTag.img: HTMLAttributes.Src {}
extension HTMLTag.input: HTMLAttributes.Src {}
extension HTMLTag.script: HTMLAttributes.Src {}
extension HTMLTag.source: HTMLAttributes.Src {}
extension HTMLTag.track: HTMLAttributes.Src {}
extension HTMLTag.video: HTMLAttributes.Src {}

extension Attribute where Tag: HTMLAttributes.Src {

	/// Specifies the URL of the media file.
	@inlinable public static func src(_ url: consuming String) -> Self {
		.init(name: "src", value: url)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.SrcSet {}
extension HTMLTag.source: HTMLAttributes.SrcSet {}

extension Attribute where Tag: HTMLAttributes.SrcSet {

	/// Specifies the URL of the image to use in different situations.
	@inlinable public static func srcSet(_ value: consuming String) -> Self {
		.init(name: "srcset", value: value)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.Target {}
extension HTMLTag.area: HTMLAttributes.Target {}
extension HTMLTag.base: HTMLAttributes.Target {}
extension HTMLTag.form: HTMLAttributes.Target {}

extension Attribute where Tag: HTMLAttributes.Target {

	/// Specifies the target for where to open the linked document or where to submit the form.
	@inlinable public static func target(_ value: consuming Target) -> Self {
		.init(name: "target", value: value)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.MediaType {}
extension HTMLTag.embed: HTMLAttributes.MediaType {}
extension HTMLTag.link: HTMLAttributes.MediaType {}
extension HTMLTag.object: HTMLAttributes.MediaType {}
extension HTMLTag.script: HTMLAttributes.MediaType {}
extension HTMLTag.source: HTMLAttributes.MediaType {}

extension Attribute where Tag: HTMLAttributes.MediaType {

	/// Specifies the type of element.
	@inlinable public static func type(_ value: consuming String) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.UseMap {}
extension HTMLTag.object: HTMLAttributes.UseMap {}

extension Attribute where Tag: HTMLAttributes.UseMap {

	/// Specifies an image as a client-side image map.
	@inlinable public static func useMap(_ id: consuming String) -> Self {
		.init(name: "usemap", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.Value {}
extension HTMLTag.data: HTMLAttributes.Value {}
extension HTMLTag.input: HTMLAttributes.Value {}
extension HTMLTag.li: HTMLAttributes.Value {}
extension HTMLTag.option: HTMLAttributes.Value {}
extension HTMLTag.meter: HTMLAttributes.Value {}
extension HTMLTag.progress: HTMLAttributes.Value {}

extension Attribute where Tag: HTMLAttributes.Value {

	/// Specifies the value of the element.
	@inlinable public static func value(_ value: consuming String) -> Self {
		.init(name: "value", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.a {

	/// Specifies the relationship of the `<a>` element.
	@inlinable public static func rel(_ value: consuming HyperlinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.area {

	// TODO: add support for proper coords type
	/// Specifies the coordinates of an area in an image map.
	@inlinable public static func coords(_ value: consuming String) -> Self {
		.init(name: "coords", value: value)
	}

	/// Specifies the relationship of the `<area>` element.
	@inlinable public static func rel(_ value: consuming HyperlinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}

	/// Specifies the shape of an area in an image map.
	@inlinable public static func shape(_ value: consuming AreaShape) -> Self {
		.init(name: "shape", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.button {

	//TODO: update value if possible
	/// Specifies the button command.
	@inlinable public static func command(_ value: consuming String) -> Self {
		.init(name: "command", value: value)
	}

	/// Specifies the commands target.
	@inlinable public static func commandFor(_ id: consuming String) -> Self {
		.init(name: "commandfor", value: id)
	}

	/// Specifies the button type.
	@inlinable public static func type(_ value: consuming ButtonType) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.form {

	/// Specifies the character encodings that are to be used for the form submission.
	@inlinable public static func acceptCharset(_ value: consuming String) -> Self {
		.init(name: "accept-charset", value: value)
	}

	/// Specifies where to send the form-data when a form is submitted.
	@inlinable public static func action(_ value: consuming String) -> Self {
		.init(name: "action", value: value)
	}

	/// Specifies whether autocomplete should be on or off.
	@inlinable public static func autocomplete(_ value: consuming Autocomplete) -> Self {
		.init(name: "autocomplete", value: value)
	}

	/// Specifies how the form-data should be encoded.
	@inlinable public static func encType(_ value: consuming EncType) -> Self {
		.init(name: "enctype", value: value)
	}

	/// Specifies the HTTP method to use when submitting the form.
	@inlinable public static func method(_ value: consuming FormMethod) -> Self {
		.init(name: "method", value: value)
	}

	/// Specifies that the form should not be validated when submitted.
	@inlinable public static var noValidate: Self {
		.init(name: "novalidate")
	}

	/// Specifies the relationship of the `<form>` element.
	@inlinable public static func rel(_ value: consuming FormRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.iframe {

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

extension Attribute where Tag == HTMLTag.input {

	/// Specifies the types of files that the server accepts (only for type="file").
	@inlinable public static func accept(_ value: consuming String) -> Self {
		.init(name: "accept", value: value)
	}

	/// Specifies that an input element is pre-selected.
	@inlinable public static var checked: Self {
		.init(name: "checked")
	}

	/// Specifies the datalist associated with an input element.
	@inlinable public static func list(_ id: consuming String) -> Self {
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
	@inlinable public static func type(_ value: consuming InputType) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.img {

	/// Specifies that the image is part of a server-side image map.
	@inlinable public static var isMap: Self {
		.init(name: "ismap")
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.link {

	/// Specifies the relationship of the `<link>` element.
	@inlinable public static func rel(_ value: consuming LinkRelationship) -> Self {
		.init(name: "rel", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.meta {

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

extension Attribute where Tag == HTMLTag.meter {

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

extension Attribute where Tag == HTMLTag.object {

	/// Specifies the URL of the resource to be used by the object.
	@inlinable public static func data(_ value: consuming String) -> Self {
		.init(name: "data", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.option {

	/// Specifies that an option should be pre-selected when the page loads.
	@inlinable public static var selected: Self {
		.init(name: "selected")
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.ol {

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

extension Attribute where Tag == HTMLTag.script {

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

extension Attribute where Tag == HTMLTag.textarea {

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

extension Attribute where Tag == HTMLTag.th {

	/// Specifies whether a header cell is a header for a column, row, or group of columns or rows.
	@inlinable public static func scope(_ value: consuming Scope) -> Self {
		.init(name: "scope", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.track {

	/// Specifies that the track is to be enabled.
	@inlinable public static var `default`: Self {
		.init(name: "default")
	}

	/// Specifies the kind of text track.
	@inlinable public static func kind(_ value: consuming TrackKind) -> Self {
		.init(name: "kind", value: value)
	}

	/// Specifies the language of the track text data.
	@inlinable public static func srcLang(_ value: consuming String) -> Self {
		.init(name: "srclang", value: value)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTag.video {

	/// Specifies an image to be shown while the video is downloading, or until the user hits the play button.
	/// If this is not included, the first frame of the video will be used instead.
	@inlinable public static func poster(_ value: consuming String) -> Self {
		.init(name: "poster", value: value)
	}
}
