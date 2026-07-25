//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public protocol HTML {}
public enum HTMLTag {}

// MARK: -

extension Array: HTML where Element: HTML {}
extension Optional: HTML where Wrapped: HTML {}

extension AsyncContent: HTML where Content: HTML {}
extension AsyncForEach: HTML where Source.Element: HTML {}
extension Conditional: HTML where First: HTML, Second: HTML {}
extension ForEach: HTML where Source.Element: HTML {}
extension Fragment: HTML where repeat each Child: HTML {}

extension Element: HTML where Tag: HTML, Content: HTML {}
extension VoidElement: HTML where Tag: HTML {}

extension Comment: HTML {}
extension Empty: HTML {}
extension Raw: HTML {}
extension Text: HTML {}

// MARK: - Main Root

extension HTMLTag {
	public enum html: HTML, TagDefinition { public static let name = "html" }
	public enum head: HTML, TagDefinition { public static let name = "head" }
	public enum body: HTML, TagDefinition { public static let name = "body" }
}

// MARK: - Document Metadata

extension HTMLTag {
	public enum base: HTML, TagDefinition { public static let name = "base" }
	public enum link: HTML, TagDefinition { public static let name = "link" }
	public enum meta: HTML, TagDefinition { public static let name = "meta" }
	public enum title: HTML, TagDefinition { public static let name = "title" }
}

// MARK: - Content Sectioning

extension HTMLTag {
	public enum address: HTML, TagDefinition { public static let name = "address" }
	public enum article: HTML, TagDefinition { public static let name = "article" }
	public enum aside: HTML, TagDefinition { public static let name = "aside" }
	public enum footer: HTML, TagDefinition { public static let name = "footer" }
	public enum header: HTML, TagDefinition { public static let name = "header" }

	public enum h1: HTML, TagDefinition { public static let name = "h1" }
	public enum h2: HTML, TagDefinition { public static let name = "h2" }
	public enum h3: HTML, TagDefinition { public static let name = "h3" }
	public enum h4: HTML, TagDefinition { public static let name = "h4" }
	public enum h5: HTML, TagDefinition { public static let name = "h5" }
	public enum h6: HTML, TagDefinition { public static let name = "h6" }

	public enum hgroup: HTML, TagDefinition { public static let name = "hgroup" }
	public enum main: HTML, TagDefinition { public static let name = "main" }
	public enum nav: HTML, TagDefinition { public static let name = "nav" }
	public enum search: HTML, TagDefinition { public static let name = "search" }
	public enum section: HTML, TagDefinition { public static let name = "section" }
}

// MARK: - Text Content

extension HTMLTag {
	public enum blockquote: HTML, TagDefinition { public static let name = "blockquote" }
	public enum dd: HTML, TagDefinition { public static let name = "dd" }
	public enum div: HTML, TagDefinition { public static let name = "div" }
	public enum dl: HTML, TagDefinition { public static let name = "dl" }
	public enum dt: HTML, TagDefinition { public static let name = "dt" }
	public enum figcaption: HTML, TagDefinition { public static let name = "figcaption" }
	public enum figure: HTML, TagDefinition { public static let name = "figure" }
	public enum hr: HTML, TagDefinition { public static let name = "hr" }
	public enum li: HTML, TagDefinition { public static let name = "li" }
	public enum menu: HTML, TagDefinition { public static let name = "menu" }
	public enum ol: HTML, TagDefinition { public static let name = "ol" }
	public enum p: HTML, TagDefinition { public static let name = "p" }
	public enum pre: HTML, TagDefinition { public static let name = "pre" }
	public enum ul: HTML, TagDefinition { public static let name = "ul" }
}

// MARK: - Inline Text Semantics

extension HTMLTag {
	public enum a: HTML, TagDefinition { public static let name = "a" }
	public enum abbr: HTML, TagDefinition { public static let name = "abbr" }
	public enum b: HTML, TagDefinition { public static let name = "b" }
	public enum bdi: HTML, TagDefinition { public static let name = "bdi" }
	public enum bdo: HTML, TagDefinition { public static let name = "bdo" }
	public enum br: HTML, TagDefinition { public static let name = "br" }
	public enum cite: HTML, TagDefinition { public static let name = "cite" }
	public enum code: HTML, TagDefinition { public static let name = "code" }
	public enum data: HTML, TagDefinition { public static let name = "data" }
	public enum dfn: HTML, TagDefinition { public static let name = "dfn" }
	public enum em: HTML, TagDefinition { public static let name = "em" }
	public enum i: HTML, TagDefinition { public static let name = "i" }
	public enum kbd: HTML, TagDefinition { public static let name = "kbd" }
	public enum mark: HTML, TagDefinition { public static let name = "mark" }
	public enum q: HTML, TagDefinition { public static let name = "q" }
	public enum rp: HTML, TagDefinition { public static let name = "rp" }
	public enum rt: HTML, TagDefinition { public static let name = "rt" }
	public enum ruby: HTML, TagDefinition { public static let name = "ruby" }
	public enum s: HTML, TagDefinition { public static let name = "s" }
	public enum samp: HTML, TagDefinition { public static let name = "samp" }
	public enum small: HTML, TagDefinition { public static let name = "small" }
	public enum span: HTML, TagDefinition { public static let name = "span" }
	public enum strong: HTML, TagDefinition { public static let name = "strong" }
	public enum sub: HTML, TagDefinition { public static let name = "sub" }
	public enum sup: HTML, TagDefinition { public static let name = "sup" }
	public enum time: HTML, TagDefinition { public static let name = "time" }
	public enum u: HTML, TagDefinition { public static let name = "u" }
	public enum `var`: HTML, TagDefinition { public static let name = "var" }
	public enum wbr: HTML, TagDefinition { public static let name = "wbr" }
}

// MARK: - Image and Multimedia

extension HTMLTag {
	public enum area: HTML, TagDefinition { public static let name = "area" }
	public enum audio: HTML, TagDefinition { public static let name = "audio" }
	public enum img: HTML, TagDefinition { public static let name = "img" }
	public enum map: HTML, TagDefinition { public static let name = "map" }
	public enum track: HTML, TagDefinition { public static let name = "track" }
	public enum video: HTML, TagDefinition { public static let name = "video" }
}

// MARK: - Embeded Content

extension HTMLTag {
	public enum embed: HTML, TagDefinition { public static let name = "embed" }
	public enum iframe: HTML, TagDefinition { public static let name = "iframe" }
	public enum picture: HTML, TagDefinition { public static let name = "picture" }
	public enum object: HTML, TagDefinition { public static let name = "object" }
	public enum source: HTML, TagDefinition { public static let name = "source" }
}

// MARK: - Scripting

extension HTMLTag {
	public enum canvas: HTML, TagDefinition { public static let name = "canvas" }
	public enum noscript: HTML, TagDefinition { public static let name = "noscript" }
	public enum script: HTML, TagDefinition { public static let name = "script" }
}

// MARK: - Demarcating Edits

extension HTMLTag {
	public enum del: HTML, TagDefinition { public static let name = "del" }
	public enum ins: HTML, TagDefinition { public static let name = "ins" }
}

// MARK: - Table Content

extension HTMLTag {
	public enum caption: HTML, TagDefinition { public static let name = "caption" }
	public enum colgroup: HTML, TagDefinition { public static let name = "colgroup" }
	public enum col: HTML, TagDefinition { public static let name = "col" }

	public enum table: HTML, TagDefinition { public static let name = "table" }
	public enum thead: HTML, TagDefinition { public static let name = "thead" }
	public enum tbody: HTML, TagDefinition { public static let name = "tbody" }
	public enum tfoot: HTML, TagDefinition { public static let name = "tfoot" }

	public enum td: HTML, TagDefinition { public static let name = "td" }
	public enum th: HTML, TagDefinition { public static let name = "th" }
	public enum tr: HTML, TagDefinition { public static let name = "tr" }
}

// MARK: - Forms

extension HTMLTag {
	public enum button: HTML, TagDefinition { public static let name = "button" }
	public enum datalist: HTML, TagDefinition { public static let name = "datalist" }
	public enum fieldset: HTML, TagDefinition { public static let name = "fieldset" }
	public enum form: HTML, TagDefinition { public static let name = "form" }
	public enum input: HTML, TagDefinition { public static let name = "input" }
	public enum label: HTML, TagDefinition { public static let name = "label" }
	public enum legend: HTML, TagDefinition { public static let name = "legend" }
	public enum meter: HTML, TagDefinition { public static let name = "meter" }
	public enum optgroup: HTML, TagDefinition { public static let name = "optgroup" }
	public enum option: HTML, TagDefinition { public static let name = "option" }
	public enum output: HTML, TagDefinition { public static let name = "output" }
	public enum progress: HTML, TagDefinition { public static let name = "progress" }
	public enum select: HTML, TagDefinition { public static let name = "select" }
	public enum textarea: HTML, TagDefinition { public static let name = "textarea" }
}

// MARK: - Interactive Elements

extension HTMLTag {
	public enum details: HTML, TagDefinition { public static let name = "details" }
	public enum dialog: HTML, TagDefinition { public static let name = "dialog" }
	public enum summary: HTML, TagDefinition { public static let name = "summary" }
}

// MARK: - Web Components

extension HTMLTag {
	public enum slot: HTML, TagDefinition { public static let name = "slot" }
	public enum template: HTML, TagDefinition { public static let name = "template" }
}
