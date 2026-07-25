//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public enum HTMLAttributes {
	public protocol alt {}
	public protocol autocomplete {}
	public protocol charset {}
	public protocol cite {}
	public protocol colspan {}
	public protocol datetime {}
	public protocol dirname {}
	public protocol disabled {}
	public protocol download {}
	public protocol `for` {}
	public protocol form {}
	public protocol formaction {}
	public protocol headers {}
	public protocol href {}
	public protocol hreflang {}
	public protocol label {}
	public protocol max {}
	public protocol maxlength {}
	public protocol media {}
	public protocol min {}
	public protocol multiple {}
	public protocol name {}
	public protocol `open` {}
	public protocol placeholder {}
	public protocol playback {}
	public protocol popover {}
	public protocol readonly {}
	public protocol `required` {}
	public protocol rowspan {}
	public protocol size {}
	public protocol sizes {}
	public protocol sizing {}
	public protocol span {}
	public protocol src {}
	public protocol srcset {}
	public protocol target {}
	public protocol type {}
	public protocol usemap {}
	public protocol value {}
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

extension HTMLTag.area: HTMLAttributes.alt {}
extension HTMLTag.img: HTMLAttributes.alt {}
extension HTMLTag.input: HTMLAttributes.alt {}

extension Attribute where Tag: HTMLAttributes.alt {

	/// Specifies information for an image if a user for some reason cannot view it.
	@inlinable public static func alt(_ text: consuming String) -> Self {
		.init(name: "alt", value: text)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.autocomplete {}
extension HTMLTag.select: HTMLAttributes.autocomplete {}
extension HTMLTag.textarea: HTMLAttributes.autocomplete {}

extension Attribute where Tag: HTMLAttributes.autocomplete {

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

extension HTMLTag.meta: HTMLAttributes.charset {}
extension HTMLTag.script: HTMLAttributes.charset {}

extension Attribute where Tag: HTMLAttributes.charset {

	/// Specifies the character encoding.
	@inlinable public static func charset(_ encoding: consuming Charset) -> Self {
		.init(name: "charset", value: encoding)
	}
}

// MARK: -

extension HTMLTag.blockquote: HTMLAttributes.cite {}
extension HTMLTag.del: HTMLAttributes.cite {}
extension HTMLTag.ins: HTMLAttributes.cite {}
extension HTMLTag.q: HTMLAttributes.cite {}

extension Attribute where Tag: HTMLAttributes.cite {

	// TODO: add support for proper url type
	/// Specifies a URL to a document that explains the quote, or why the text was inserted/changed.
	@inlinable public static func cite(_ url: consuming String) -> Self {
		.init(name: "cite", value: url)
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.colspan {}
extension HTMLTag.th: HTMLAttributes.colspan {}

extension Attribute where Tag: HTMLAttributes.colspan {

	/// Specifies the number of columns a cell should span.
	@inlinable public static func colSpan(_ count: consuming Int) -> Self {
		.init(name: "colspan", value: count)
	}
}

// MARK: -

extension HTMLTag.del: HTMLAttributes.datetime {}
extension HTMLTag.ins: HTMLAttributes.datetime {}
extension HTMLTag.time: HTMLAttributes.datetime {}

extension Attribute where Tag: HTMLAttributes.datetime {

	// TODO: add support for proper date type
	/// Specifies the date and time when the text was deleted/inserted.
	@inlinable public static func dateTime(_ date: consuming String) -> Self {
		.init(name: "datetime", value: date)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.dirname {}
extension HTMLTag.textarea: HTMLAttributes.dirname {}

extension Attribute where Tag: HTMLAttributes.dirname {

	/// Specifies that the text direction will be submitted.
	@inlinable public static func dirName(_ name: consuming String) -> Self {
		.init(name: "dirname", value: name)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.disabled {}
extension HTMLTag.fieldset: HTMLAttributes.disabled {}
extension HTMLTag.input: HTMLAttributes.disabled {}
extension HTMLTag.optgroup: HTMLAttributes.disabled {}
extension HTMLTag.option: HTMLAttributes.disabled {}
extension HTMLTag.select: HTMLAttributes.disabled {}
extension HTMLTag.textarea: HTMLAttributes.disabled {}

extension Attribute where Tag: HTMLAttributes.disabled {

	/// Specifies that the element should be disabled.
	@inlinable public static var disabled: Self {
		.init(name: "disabled")
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.download {}
extension HTMLTag.area: HTMLAttributes.download {}

extension Attribute where Tag: HTMLAttributes.download {

	/// Specifies that the target will be downloaded when a user clicks on the hyperlink.
	@inlinable public static var download: Self {
		.init(name: "download")
	}
}

// MARK: -

extension HTMLTag.label: HTMLAttributes.`for` {}
extension HTMLTag.output: HTMLAttributes.`for` {}

extension Attribute where Tag: HTMLAttributes.`for` {

	/// Specifies the relationship between the element and a form control.
	@inlinable public static func `for`(_ id: consuming String) -> Self {
		.init(name: "for", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.form {}
extension HTMLTag.fieldset: HTMLAttributes.form {}
extension HTMLTag.input: HTMLAttributes.form {}
extension HTMLTag.label: HTMLAttributes.form {}
extension HTMLTag.meter: HTMLAttributes.form {}
extension HTMLTag.object: HTMLAttributes.form {}
extension HTMLTag.output: HTMLAttributes.form {}
extension HTMLTag.select: HTMLAttributes.form {}
extension HTMLTag.textarea: HTMLAttributes.form {}

extension Attribute where Tag: HTMLAttributes.form {

	/// Specifies the form the element belongs to.
	@inlinable public static func form(_ id: consuming String) -> Self {
		.init(name: "form", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.formaction {}
extension HTMLTag.input: HTMLAttributes.formaction {}

extension Attribute where Tag: HTMLAttributes.formaction {

	/// Specifies where to send the form-data when a form is submitted.
	@inlinable public static func formAction(_ url: consuming String) -> Self {
		.init(name: "formaction", value: url)
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.headers {}
extension HTMLTag.th: HTMLAttributes.headers {}

extension Attribute where Tag: HTMLAttributes.headers {

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

extension HTMLTag.a: HTMLAttributes.href {}
extension HTMLTag.area: HTMLAttributes.href {}
extension HTMLTag.base: HTMLAttributes.href {}
extension HTMLTag.link: HTMLAttributes.href {}

extension Attribute where Tag: HTMLAttributes.href {

	// TODO: add support for proper url type
	/// Specifies the URL of the page the link goes to.
	@inlinable public static func href(_ url: consuming String) -> Self {
		.init(name: "href", value: url)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.hreflang {}
extension HTMLTag.area: HTMLAttributes.hreflang {}
extension HTMLTag.link: HTMLAttributes.hreflang {}

extension Attribute where Tag: HTMLAttributes.hreflang {

	/// Specifies the language of the linked document.
	@inlinable public static func hrefLang(_ language: consuming Language) -> Self {
		.init(name: "hreflang", value: language)
	}
}

// MARK: -

extension HTMLTag.track: HTMLAttributes.label {}
extension HTMLTag.option: HTMLAttributes.label {}
extension HTMLTag.optgroup: HTMLAttributes.label {}

extension Attribute where Tag: HTMLAttributes.label {

	/// Specifies a label.
	@inlinable public static func label(_ text: consuming String) -> Self {
		.init(name: "label", value: text)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.max {}
extension HTMLTag.meter: HTMLAttributes.max {}
extension HTMLTag.progress: HTMLAttributes.max {}

extension Attribute where Tag: HTMLAttributes.max {

	/// Specifies how much work the task requires in total.
	@inlinable public static func max(_ value: consuming Int) -> Self {
		.init(name: "max", value: value)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.maxlength {}
extension HTMLTag.textarea: HTMLAttributes.maxlength {}

extension Attribute where Tag: HTMLAttributes.maxlength {

	/// Specifies the maximum number of characters allowed in the element.
	@inlinable public static func maxLength(_ count: consuming Int) -> Self {
		.init(name: "maxlength", value: count)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.media {}
extension HTMLTag.area: HTMLAttributes.media {}
extension HTMLTag.link: HTMLAttributes.media {}
extension HTMLTag.source: HTMLAttributes.media {}

extension Attribute where Tag: HTMLAttributes.media {

	/// Specifies what media/device the linked document is optimized for.
	@inlinable public static func media(_ query: consuming String) -> Self {
		.init(name: "media", value: query)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.min {}
extension HTMLTag.meter: HTMLAttributes.min {}

extension Attribute where Tag: HTMLAttributes.min {

	/// Specifies how much work the task requires in total.
	@inlinable public static func min(_ value: consuming Int) -> Self {
		.init(name: "min", value: value)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.multiple {}
extension HTMLTag.select: HTMLAttributes.multiple {}

extension Attribute where Tag: HTMLAttributes.multiple {

	/// Specifies that the user is allowed to enter/select more than one value.
	@inlinable public static var multiple: Self {
		.init(name: "multiple")
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.name {}
extension HTMLTag.fieldset: HTMLAttributes.name {}
extension HTMLTag.form: HTMLAttributes.name {}
extension HTMLTag.iframe: HTMLAttributes.name {}
extension HTMLTag.input: HTMLAttributes.name {}
extension HTMLTag.map: HTMLAttributes.name {}
extension HTMLTag.meta: HTMLAttributes.name {}
extension HTMLTag.object: HTMLAttributes.name {}
extension HTMLTag.output: HTMLAttributes.name {}
extension HTMLTag.select: HTMLAttributes.name {}
extension HTMLTag.textarea: HTMLAttributes.name {}

extension Attribute where Tag: HTMLAttributes.name {

	/// Specifies the name of the element. Can be used to reference the element in a JavaScript.
	@inlinable public static func name(_ name: consuming String) -> Self {
		.init(name: "name", value: name)
	}
}

// MARK: -

extension HTMLTag.details: HTMLAttributes.open {}
extension HTMLTag.dialog: HTMLAttributes.open {}

extension Attribute where Tag: HTMLAttributes.open {

	/// Specifies that the element is opened and the user can interact with it.
	@inlinable public static var open: Self {
		.init(name: "open")
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.placeholder {}
extension HTMLTag.textarea: HTMLAttributes.placeholder {}

extension Attribute where Tag: HTMLAttributes.placeholder {

	/// Specifies a short hint that describes the expected value of an input field or a textarea.
	@inlinable public static func placeholder(_ text: consuming String) -> Self {
		.init(name: "placeholder", value: text)
	}
}

// MARK: -

extension HTMLTag.audio: HTMLAttributes.playback {}
extension HTMLTag.video: HTMLAttributes.playback {}

extension Attribute where Tag: HTMLAttributes.playback {

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

extension HTMLTag.button: HTMLAttributes.popover {}
extension HTMLTag.input: HTMLAttributes.popover {}

extension Attribute where Tag: HTMLAttributes.popover {

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

extension HTMLTag.input: HTMLAttributes.readonly {}
extension HTMLTag.textarea: HTMLAttributes.readonly {}

extension Attribute where Tag: HTMLAttributes.readonly {

	/// Specifies that the element is read-only.
	@inlinable public static var readOnly: Self {
		.init(name: "readonly")
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.required {}
extension HTMLTag.select: HTMLAttributes.required {}
extension HTMLTag.textarea: HTMLAttributes.required {}

extension Attribute where Tag: HTMLAttributes.required {

	/// Specifies that the element must be filled out before submitting the form.
	@inlinable public static var required: Self {
		.init(name: "required")
	}
}

// MARK: -

extension HTMLTag.td: HTMLAttributes.rowspan {}
extension HTMLTag.th: HTMLAttributes.rowspan {}

extension Attribute where Tag: HTMLAttributes.rowspan {

	/// Specifies the number of rows a table cell should span.
	@inlinable public static func rowSpan(_ count: consuming Int) -> Self {
		.init(name: "rowspan", value: count)
	}
}

// MARK: -

extension HTMLTag.input: HTMLAttributes.size {}
extension HTMLTag.select: HTMLAttributes.size {}

extension Attribute where Tag: HTMLAttributes.size {

	/// Specifies the for the visible content.
	@inlinable public static func size(_ count: consuming Int) -> Self {
		.init(name: "size", value: count)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.sizes {}
extension HTMLTag.link: HTMLAttributes.sizes {}
extension HTMLTag.source: HTMLAttributes.sizes {}

extension Attribute where Tag: HTMLAttributes.sizes {

	/// Specifies the size of the linked resource.
	@inlinable public static func sizes(_ value: consuming String) -> Self {
		.init(name: "sizes", value: value)
	}
}

// MARK: -

extension HTMLTag.canvas: HTMLAttributes.sizing {}
extension HTMLTag.embed: HTMLAttributes.sizing {}
extension HTMLTag.iframe: HTMLAttributes.sizing {}
extension HTMLTag.img: HTMLAttributes.sizing {}
extension HTMLTag.input: HTMLAttributes.sizing {}
extension HTMLTag.object: HTMLAttributes.sizing {}
extension HTMLTag.video: HTMLAttributes.sizing {}

extension Attribute where Tag: HTMLAttributes.sizing {

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

extension HTMLTag.col: HTMLAttributes.span {}
extension HTMLTag.colgroup: HTMLAttributes.span {}

extension Attribute where Tag: HTMLAttributes.span {

	/// Specifies the number of columns to span.
	@inlinable public static func span(_ count: consuming Int) -> Self {
		.init(name: "span", value: count)
	}
}

// MARK: -

extension HTMLTag.audio: HTMLAttributes.src {}
extension HTMLTag.embed: HTMLAttributes.src {}
extension HTMLTag.iframe: HTMLAttributes.src {}
extension HTMLTag.img: HTMLAttributes.src {}
extension HTMLTag.input: HTMLAttributes.src {}
extension HTMLTag.script: HTMLAttributes.src {}
extension HTMLTag.source: HTMLAttributes.src {}
extension HTMLTag.track: HTMLAttributes.src {}
extension HTMLTag.video: HTMLAttributes.src {}

extension Attribute where Tag: HTMLAttributes.src {

	/// Specifies the URL of the media file.
	@inlinable public static func src(_ url: consuming String) -> Self {
		.init(name: "src", value: url)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.srcset {}
extension HTMLTag.source: HTMLAttributes.srcset {}

extension Attribute where Tag: HTMLAttributes.srcset {

	/// Specifies the URL of the image to use in different situations.
	@inlinable public static func srcSet(_ value: consuming String) -> Self {
		.init(name: "srcset", value: value)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.target {}
extension HTMLTag.area: HTMLAttributes.target {}
extension HTMLTag.base: HTMLAttributes.target {}
extension HTMLTag.form: HTMLAttributes.target {}

extension Attribute where Tag: HTMLAttributes.target {

	/// Specifies the target for where to open the linked document or where to submit the form.
	@inlinable public static func target(_ value: consuming Target) -> Self {
		.init(name: "target", value: value)
	}
}

// MARK: -

extension HTMLTag.a: HTMLAttributes.type {}
extension HTMLTag.embed: HTMLAttributes.type {}
extension HTMLTag.link: HTMLAttributes.type {}
extension HTMLTag.object: HTMLAttributes.type {}
extension HTMLTag.script: HTMLAttributes.type {}
extension HTMLTag.source: HTMLAttributes.type {}

extension Attribute where Tag: HTMLAttributes.type {

	/// Specifies the type of element.
	@inlinable public static func type(_ value: consuming String) -> Self {
		.init(name: "type", value: value)
	}
}

// MARK: -

extension HTMLTag.img: HTMLAttributes.usemap {}
extension HTMLTag.object: HTMLAttributes.usemap {}

extension Attribute where Tag: HTMLAttributes.usemap {

	/// Specifies an image as a client-side image map.
	@inlinable public static func useMap(_ id: consuming String) -> Self {
		.init(name: "usemap", value: id)
	}
}

// MARK: -

extension HTMLTag.button: HTMLAttributes.value {}
extension HTMLTag.data: HTMLAttributes.value {}
extension HTMLTag.input: HTMLAttributes.value {}
extension HTMLTag.li: HTMLAttributes.value {}
extension HTMLTag.option: HTMLAttributes.value {}
extension HTMLTag.meter: HTMLAttributes.value {}
extension HTMLTag.progress: HTMLAttributes.value {}

extension Attribute where Tag: HTMLAttributes.value {

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
