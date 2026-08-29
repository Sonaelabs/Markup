//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public enum HTML {
	public protocol Element: Node {}
	public protocol Tag: TagDefinition {}
	public enum Trait {}
}

// MARK: -

extension Array: HTML.Element where Element: HTML.Element {}
extension Optional: HTML.Element where Wrapped: HTML.Element {}

extension Compound: HTML.Element where Content: HTML.Element {}
extension Conditional: HTML.Element where First: HTML.Element, Second: HTML.Element {}
extension ForEach: HTML.Element where Content: HTML.Element {}
extension Fragment: HTML.Element where repeat each Child: HTML.Element {}

extension Element: HTML.Element where Tag: HTML.Tag, Content: HTML.Element {}
extension VoidElement: HTML.Element where Tag: HTML.Tag {}

extension Comment: HTML.Element {}
extension Empty: HTML.Element {}
extension Raw: HTML.Element {}
extension Text: HTML.Element {}

// MARK: - Main Root

extension HTML: HTML.Tag { public static let name = "html" }

extension HTML {
	public enum Head: Tag { public static let name = "head" }
	public enum Body: Tag { public static let name = "body" }
}

// MARK: - Document Metadata

extension HTML {
	public enum Base: Tag { public static let name = "base" }
	public enum Link: Tag { public static let name = "link" }
	public enum Meta: Tag { public static let name = "meta" }
	public enum Title: Tag { public static let name = "title" }
}

// MARK: - Content Sectioning

extension HTML {
	public enum Address: Tag { public static let name = "address" }
	public enum Article: Tag { public static let name = "article" }
	public enum Aside: Tag { public static let name = "aside" }
	public enum Footer: Tag { public static let name = "footer" }
	public enum Header: Tag { public static let name = "header" }

	public enum H1: Tag { public static let name = "h1" }
	public enum H2: Tag { public static let name = "h2" }
	public enum H3: Tag { public static let name = "h3" }
	public enum H4: Tag { public static let name = "h4" }
	public enum H5: Tag { public static let name = "h5" }
	public enum H6: Tag { public static let name = "h6" }

	public enum Hgroup: Tag { public static let name = "hgroup" }
	public enum Main: Tag { public static let name = "main" }
	public enum Nav: Tag { public static let name = "nav" }
	public enum Search: Tag { public static let name = "search" }
	public enum Section: Tag { public static let name = "section" }
}

// MARK: - Text Content

extension HTML {
	public enum Blockquote: Tag { public static let name = "blockquote" }
	public enum Dd: Tag { public static let name = "dd" }
	public enum Div: Tag { public static let name = "div" }
	public enum Dl: Tag { public static let name = "dl" }
	public enum Dt: Tag { public static let name = "dt" }
	public enum Figcaption: Tag { public static let name = "figcaption" }
	public enum Figure: Tag { public static let name = "figure" }
	public enum Hr: Tag { public static let name = "hr" }
	public enum Li: Tag { public static let name = "li" }
	public enum Menu: Tag { public static let name = "menu" }
	public enum Ol: Tag { public static let name = "ol" }
	public enum P: Tag { public static let name = "p" }
	public enum Pre: Tag { public static let name = "pre" }
	public enum Ul: Tag { public static let name = "ul" }
}

// MARK: - Inline Text Semantics

extension HTML {
	public enum A: Tag { public static let name = "a" }
	public enum Abbr: Tag { public static let name = "abbr" }
	public enum B: Tag { public static let name = "b" }
	public enum Bdi: Tag { public static let name = "bdi" }
	public enum Bdo: Tag { public static let name = "bdo" }
	public enum Br: Tag { public static let name = "br" }
	public enum Cite: Tag { public static let name = "cite" }
	public enum Code: Tag { public static let name = "code" }
	public enum Data: Tag { public static let name = "data" }
	public enum Dfn: Tag { public static let name = "dfn" }
	public enum Em: Tag { public static let name = "em" }
	public enum I: Tag { public static let name = "i" }
	public enum Kbd: Tag { public static let name = "kbd" }
	public enum Mark: Tag { public static let name = "mark" }
	public enum Q: Tag { public static let name = "q" }
	public enum Rp: Tag { public static let name = "rp" }
	public enum Rt: Tag { public static let name = "rt" }
	public enum Ruby: Tag { public static let name = "ruby" }
	public enum S: Tag { public static let name = "s" }
	public enum Samp: Tag { public static let name = "samp" }
	public enum Small: Tag { public static let name = "small" }
	public enum Span: Tag { public static let name = "span" }
	public enum Strong: Tag { public static let name = "strong" }
	public enum Sub: Tag { public static let name = "sub" }
	public enum Sup: Tag { public static let name = "sup" }
	public enum Time: Tag { public static let name = "time" }
	public enum U: Tag { public static let name = "u" }
	public enum Var: Tag { public static let name = "var" }
	public enum Wbr: Tag { public static let name = "wbr" }
}

// MARK: - Image and Multimedia

extension HTML {
	public enum Area: Tag { public static let name = "area" }
	public enum Audio: Tag { public static let name = "audio" }
	public enum Img: Tag { public static let name = "img" }
	public enum Map: Tag { public static let name = "map" }
	public enum Track: Tag { public static let name = "track" }
	public enum Video: Tag { public static let name = "video" }
}

// MARK: - Embeded Content

extension HTML {
	public enum Embed: Tag { public static let name = "embed" }
	public enum Iframe: Tag { public static let name = "iframe" }
	public enum Picture: Tag { public static let name = "picture" }
	public enum Object: Tag { public static let name = "object" }
	public enum Source: Tag { public static let name = "source" }
}

// MARK: - Scripting

extension HTML {
	public enum Canvas: Tag { public static let name = "canvas" }
	public enum Noscript: Tag { public static let name = "noscript" }
	public enum Script: Tag { public static let name = "script" }
}

// MARK: - Demarcating Edits

extension HTML {
	public enum Del: Tag { public static let name = "del" }
	public enum Ins: Tag { public static let name = "ins" }
}

// MARK: - Table Content

extension HTML {
	public enum Caption: Tag { public static let name = "caption" }
	public enum Colgroup: Tag { public static let name = "colgroup" }
	public enum Col: Tag { public static let name = "col" }

	public enum Table: Tag { public static let name = "table" }
	public enum Thead: Tag { public static let name = "thead" }
	public enum Tbody: Tag { public static let name = "tbody" }
	public enum Tfoot: Tag { public static let name = "tfoot" }

	public enum Td: Tag { public static let name = "td" }
	public enum Th: Tag { public static let name = "th" }
	public enum Tr: Tag { public static let name = "tr" }
}

// MARK: - Forms

extension HTML {
	public enum Button: Tag { public static let name = "button" }
	public enum Datalist: Tag { public static let name = "datalist" }
	public enum Fieldset: Tag { public static let name = "fieldset" }
	public enum Form: Tag { public static let name = "form" }
	public enum Input: Tag { public static let name = "input" }
	public enum Label: Tag { public static let name = "label" }
	public enum Legend: Tag { public static let name = "legend" }
	public enum Meter: Tag { public static let name = "meter" }
	public enum Optgroup: Tag { public static let name = "optgroup" }
	public enum Option: Tag { public static let name = "option" }
	public enum Output: Tag { public static let name = "output" }
	public enum Progress: Tag { public static let name = "progress" }
	public enum Select: Tag { public static let name = "select" }
	public enum Textarea: Tag { public static let name = "textarea" }
}

// MARK: - Interactive Elements

extension HTML {
	public enum Details: Tag { public static let name = "details" }
	public enum Dialog: Tag { public static let name = "dialog" }
	public enum Summary: Tag { public static let name = "summary" }
}

// MARK: - Web Components

extension HTML {
	public enum Slot: Tag { public static let name = "slot" }
	public enum Template: Tag { public static let name = "template" }
}
