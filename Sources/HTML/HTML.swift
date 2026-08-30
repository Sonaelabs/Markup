//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public enum HTML {
	public protocol Node: Markup.Node {}
	public protocol Tag: TagDefinition {}
	public enum Trait {}
}

// MARK: -

extension Array: HTML.Node where Element: HTML.Node {}
extension Optional: HTML.Node where Wrapped: HTML.Node {}

extension Compound: HTML.Node where Content: HTML.Node {}
extension Conditional: HTML.Node where First: HTML.Node, Second: HTML.Node {}
extension ForEach: HTML.Node where Content: HTML.Node {}
extension Fragment: HTML.Node where repeat each Child: HTML.Node {}

extension Comment: HTML.Node {}
extension Empty: HTML.Node {}
extension Raw: HTML.Node {}
extension Text: HTML.Node {}

// MARK: - Main Root

extension HTML: HTML.Tag { public static let name: StaticString = "html" }

extension HTML {
	public enum Head: Tag { public static let name: StaticString = "head" }
	public enum Body: Tag { public static let name: StaticString = "body" }
}

// MARK: - Document Metadata

extension HTML {
	public enum Base: Tag { public static let name: StaticString = "base" }
	public enum Link: Tag { public static let name: StaticString = "link" }
	public enum Meta: Tag { public static let name: StaticString = "meta" }
	public enum Title: Tag { public static let name: StaticString = "title" }
}

// MARK: - Content Sectioning

extension HTML {
	public enum Address: Tag { public static let name: StaticString = "address" }
	public enum Article: Tag { public static let name: StaticString = "article" }
	public enum Aside: Tag { public static let name: StaticString = "aside" }
	public enum Footer: Tag { public static let name: StaticString = "footer" }
	public enum Header: Tag { public static let name: StaticString = "header" }

	public enum H1: Tag { public static let name: StaticString = "h1" }
	public enum H2: Tag { public static let name: StaticString = "h2" }
	public enum H3: Tag { public static let name: StaticString = "h3" }
	public enum H4: Tag { public static let name: StaticString = "h4" }
	public enum H5: Tag { public static let name: StaticString = "h5" }
	public enum H6: Tag { public static let name: StaticString = "h6" }

	public enum Hgroup: Tag { public static let name: StaticString = "hgroup" }
	public enum Main: Tag { public static let name: StaticString = "main" }
	public enum Nav: Tag { public static let name: StaticString = "nav" }
	public enum Search: Tag { public static let name: StaticString = "search" }
	public enum Section: Tag { public static let name: StaticString = "section" }
}

// MARK: - Text Content

extension HTML {
	public enum Blockquote: Tag { public static let name: StaticString = "blockquote" }
	public enum Dd: Tag { public static let name: StaticString = "dd" }
	public enum Div: Tag { public static let name: StaticString = "div" }
	public enum Dl: Tag { public static let name: StaticString = "dl" }
	public enum Dt: Tag { public static let name: StaticString = "dt" }
	public enum Figcaption: Tag { public static let name: StaticString = "figcaption" }
	public enum Figure: Tag { public static let name: StaticString = "figure" }
	public enum Hr: Tag { public static let name: StaticString = "hr" }
	public enum Li: Tag { public static let name: StaticString = "li" }
	public enum Menu: Tag { public static let name: StaticString = "menu" }
	public enum Ol: Tag { public static let name: StaticString = "ol" }
	public enum P: Tag { public static let name: StaticString = "p" }
	public enum Pre: Tag { public static let name: StaticString = "pre" }
	public enum Ul: Tag { public static let name: StaticString = "ul" }
}

// MARK: - Inline Text Semantics

extension HTML {
	public enum A: Tag { public static let name: StaticString = "a" }
	public enum Abbr: Tag { public static let name: StaticString = "abbr" }
	public enum B: Tag { public static let name: StaticString = "b" }
	public enum Bdi: Tag { public static let name: StaticString = "bdi" }
	public enum Bdo: Tag { public static let name: StaticString = "bdo" }
	public enum Br: Tag { public static let name: StaticString = "br" }
	public enum Cite: Tag { public static let name: StaticString = "cite" }
	public enum Code: Tag { public static let name: StaticString = "code" }
	public enum Data: Tag { public static let name: StaticString = "data" }
	public enum Dfn: Tag { public static let name: StaticString = "dfn" }
	public enum Em: Tag { public static let name: StaticString = "em" }
	public enum I: Tag { public static let name: StaticString = "i" }
	public enum Kbd: Tag { public static let name: StaticString = "kbd" }
	public enum Mark: Tag { public static let name: StaticString = "mark" }
	public enum Q: Tag { public static let name: StaticString = "q" }
	public enum Rp: Tag { public static let name: StaticString = "rp" }
	public enum Rt: Tag { public static let name: StaticString = "rt" }
	public enum Ruby: Tag { public static let name: StaticString = "ruby" }
	public enum S: Tag { public static let name: StaticString = "s" }
	public enum Samp: Tag { public static let name: StaticString = "samp" }
	public enum Small: Tag { public static let name: StaticString = "small" }
	public enum Span: Tag { public static let name: StaticString = "span" }
	public enum Strong: Tag { public static let name: StaticString = "strong" }
	public enum Sub: Tag { public static let name: StaticString = "sub" }
	public enum Sup: Tag { public static let name: StaticString = "sup" }
	public enum Time: Tag { public static let name: StaticString = "time" }
	public enum U: Tag { public static let name: StaticString = "u" }
	public enum Var: Tag { public static let name: StaticString = "var" }
	public enum Wbr: Tag { public static let name: StaticString = "wbr" }
}

// MARK: - Image and Multimedia

extension HTML {
	public enum Area: Tag { public static let name: StaticString = "area" }
	public enum Audio: Tag { public static let name: StaticString = "audio" }
	public enum Img: Tag { public static let name: StaticString = "img" }
	public enum Map: Tag { public static let name: StaticString = "map" }
	public enum Track: Tag { public static let name: StaticString = "track" }
	public enum Video: Tag { public static let name: StaticString = "video" }
}

// MARK: - Embeded Content

extension HTML {
	public enum Embed: Tag { public static let name: StaticString = "embed" }
	public enum Iframe: Tag { public static let name: StaticString = "iframe" }
	public enum Picture: Tag { public static let name: StaticString = "picture" }
	public enum Object: Tag { public static let name: StaticString = "object" }
	public enum Source: Tag { public static let name: StaticString = "source" }
}

// MARK: - Scripting

extension HTML {
	public enum Canvas: Tag { public static let name: StaticString = "canvas" }
	public enum Noscript: Tag { public static let name: StaticString = "noscript" }
	public enum Script: Tag { public static let name: StaticString = "script" }
}

// MARK: - Demarcating Edits

extension HTML {
	public enum Del: Tag { public static let name: StaticString = "del" }
	public enum Ins: Tag { public static let name: StaticString = "ins" }
}

// MARK: - Table Content

extension HTML {
	public enum Caption: Tag { public static let name: StaticString = "caption" }
	public enum Colgroup: Tag { public static let name: StaticString = "colgroup" }
	public enum Col: Tag { public static let name: StaticString = "col" }

	public enum Table: Tag { public static let name: StaticString = "table" }
	public enum Thead: Tag { public static let name: StaticString = "thead" }
	public enum Tbody: Tag { public static let name: StaticString = "tbody" }
	public enum Tfoot: Tag { public static let name: StaticString = "tfoot" }

	public enum Td: Tag { public static let name: StaticString = "td" }
	public enum Th: Tag { public static let name: StaticString = "th" }
	public enum Tr: Tag { public static let name: StaticString = "tr" }
}

// MARK: - Forms

extension HTML {
	public enum Button: Tag { public static let name: StaticString = "button" }
	public enum Datalist: Tag { public static let name: StaticString = "datalist" }
	public enum Fieldset: Tag { public static let name: StaticString = "fieldset" }
	public enum Form: Tag { public static let name: StaticString = "form" }
	public enum Input: Tag { public static let name: StaticString = "input" }
	public enum Label: Tag { public static let name: StaticString = "label" }
	public enum Legend: Tag { public static let name: StaticString = "legend" }
	public enum Meter: Tag { public static let name: StaticString = "meter" }
	public enum Optgroup: Tag { public static let name: StaticString = "optgroup" }
	public enum Option: Tag { public static let name: StaticString = "option" }
	public enum Output: Tag { public static let name: StaticString = "output" }
	public enum Progress: Tag { public static let name: StaticString = "progress" }
	public enum Select: Tag { public static let name: StaticString = "select" }
	public enum Textarea: Tag { public static let name: StaticString = "textarea" }
}

// MARK: - Interactive Elements

extension HTML {
	public enum Details: Tag { public static let name: StaticString = "details" }
	public enum Dialog: Tag { public static let name: StaticString = "dialog" }
	public enum Summary: Tag { public static let name: StaticString = "summary" }
}

// MARK: - Web Components

extension HTML {
	public enum Slot: Tag { public static let name: StaticString = "slot" }
	public enum Template: Tag { public static let name: StaticString = "template" }
}
