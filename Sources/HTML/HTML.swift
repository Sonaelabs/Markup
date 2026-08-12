//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public protocol HTML: Node {}
public protocol HTMLTag: TagDefinition {}

// MARK: -

extension Array: HTML where Element: HTML {}
extension Optional: HTML where Wrapped: HTML {}

extension Compound: HTML where Content: HTML {}
extension Conditional: HTML where First: HTML, Second: HTML {}
extension ForEach: HTML where Content: HTML {}
extension Fragment: HTML where repeat each Child: HTML {}

extension Element: HTML where Tag: HTMLTag, Content: HTML {}
extension VoidElement: HTML where Tag: HTMLTag {}

extension Comment: HTML {}
extension Empty: HTML {}
extension Raw: HTML {}
extension Text: HTML {}

// MARK: - Main Root

public enum HTMLElement {
	public enum html: HTMLTag { public static let name = "html" }
	public enum head: HTMLTag { public static let name = "head" }
	public enum body: HTMLTag { public static let name = "body" }
}

// MARK: - Document Metadata

extension HTMLElement {
	public enum base: HTMLTag { public static let name = "base" }
	public enum link: HTMLTag { public static let name = "link" }
	public enum meta: HTMLTag { public static let name = "meta" }
	public enum title: HTMLTag { public static let name = "title" }
}

// MARK: - Content Sectioning

extension HTMLElement {
	public enum address: HTMLTag { public static let name = "address" }
	public enum article: HTMLTag { public static let name = "article" }
	public enum aside: HTMLTag { public static let name = "aside" }
	public enum footer: HTMLTag { public static let name = "footer" }
	public enum header: HTMLTag { public static let name = "header" }

	public enum h1: HTMLTag { public static let name = "h1" }
	public enum h2: HTMLTag { public static let name = "h2" }
	public enum h3: HTMLTag { public static let name = "h3" }
	public enum h4: HTMLTag { public static let name = "h4" }
	public enum h5: HTMLTag { public static let name = "h5" }
	public enum h6: HTMLTag { public static let name = "h6" }

	public enum hgroup: HTMLTag { public static let name = "hgroup" }
	public enum main: HTMLTag { public static let name = "main" }
	public enum nav: HTMLTag { public static let name = "nav" }
	public enum search: HTMLTag { public static let name = "search" }
	public enum section: HTMLTag { public static let name = "section" }
}

// MARK: - Text Content

extension HTMLElement {
	public enum blockquote: HTMLTag { public static let name = "blockquote" }
	public enum dd: HTMLTag { public static let name = "dd" }
	public enum div: HTMLTag { public static let name = "div" }
	public enum dl: HTMLTag { public static let name = "dl" }
	public enum dt: HTMLTag { public static let name = "dt" }
	public enum figcaption: HTMLTag { public static let name = "figcaption" }
	public enum figure: HTMLTag { public static let name = "figure" }
	public enum hr: HTMLTag { public static let name = "hr" }
	public enum li: HTMLTag { public static let name = "li" }
	public enum menu: HTMLTag { public static let name = "menu" }
	public enum ol: HTMLTag { public static let name = "ol" }
	public enum p: HTMLTag { public static let name = "p" }
	public enum pre: HTMLTag { public static let name = "pre" }
	public enum ul: HTMLTag { public static let name = "ul" }
}

// MARK: - Inline Text Semantics

extension HTMLElement {
	public enum a: HTMLTag { public static let name = "a" }
	public enum abbr: HTMLTag { public static let name = "abbr" }
	public enum b: HTMLTag { public static let name = "b" }
	public enum bdi: HTMLTag { public static let name = "bdi" }
	public enum bdo: HTMLTag { public static let name = "bdo" }
	public enum br: HTMLTag { public static let name = "br" }
	public enum cite: HTMLTag { public static let name = "cite" }
	public enum code: HTMLTag { public static let name = "code" }
	public enum data: HTMLTag { public static let name = "data" }
	public enum dfn: HTMLTag { public static let name = "dfn" }
	public enum em: HTMLTag { public static let name = "em" }
	public enum i: HTMLTag { public static let name = "i" }
	public enum kbd: HTMLTag { public static let name = "kbd" }
	public enum mark: HTMLTag { public static let name = "mark" }
	public enum q: HTMLTag { public static let name = "q" }
	public enum rp: HTMLTag { public static let name = "rp" }
	public enum rt: HTMLTag { public static let name = "rt" }
	public enum ruby: HTMLTag { public static let name = "ruby" }
	public enum s: HTMLTag { public static let name = "s" }
	public enum samp: HTMLTag { public static let name = "samp" }
	public enum small: HTMLTag { public static let name = "small" }
	public enum span: HTMLTag { public static let name = "span" }
	public enum strong: HTMLTag { public static let name = "strong" }
	public enum sub: HTMLTag { public static let name = "sub" }
	public enum sup: HTMLTag { public static let name = "sup" }
	public enum time: HTMLTag { public static let name = "time" }
	public enum u: HTMLTag { public static let name = "u" }
	public enum `var`: HTMLTag { public static let name = "var" }
	public enum wbr: HTMLTag { public static let name = "wbr" }
}

// MARK: - Image and Multimedia

extension HTMLElement {
	public enum area: HTMLTag { public static let name = "area" }
	public enum audio: HTMLTag { public static let name = "audio" }
	public enum img: HTMLTag { public static let name = "img" }
	public enum map: HTMLTag { public static let name = "map" }
	public enum track: HTMLTag { public static let name = "track" }
	public enum video: HTMLTag { public static let name = "video" }
}

// MARK: - Embeded Content

extension HTMLElement {
	public enum embed: HTMLTag { public static let name = "embed" }
	public enum iframe: HTMLTag { public static let name = "iframe" }
	public enum picture: HTMLTag { public static let name = "picture" }
	public enum object: HTMLTag { public static let name = "object" }
	public enum source: HTMLTag { public static let name = "source" }
}

// MARK: - Scripting

extension HTMLElement {
	public enum canvas: HTMLTag { public static let name = "canvas" }
	public enum noscript: HTMLTag { public static let name = "noscript" }
	public enum script: HTMLTag { public static let name = "script" }
}

// MARK: - Demarcating Edits

extension HTMLElement {
	public enum del: HTMLTag { public static let name = "del" }
	public enum ins: HTMLTag { public static let name = "ins" }
}

// MARK: - Table Content

extension HTMLElement {
	public enum caption: HTMLTag { public static let name = "caption" }
	public enum colgroup: HTMLTag { public static let name = "colgroup" }
	public enum col: HTMLTag { public static let name = "col" }

	public enum table: HTMLTag { public static let name = "table" }
	public enum thead: HTMLTag { public static let name = "thead" }
	public enum tbody: HTMLTag { public static let name = "tbody" }
	public enum tfoot: HTMLTag { public static let name = "tfoot" }

	public enum td: HTMLTag { public static let name = "td" }
	public enum th: HTMLTag { public static let name = "th" }
	public enum tr: HTMLTag { public static let name = "tr" }
}

// MARK: - Forms

extension HTMLElement {
	public enum button: HTMLTag { public static let name = "button" }
	public enum datalist: HTMLTag { public static let name = "datalist" }
	public enum fieldset: HTMLTag { public static let name = "fieldset" }
	public enum form: HTMLTag { public static let name = "form" }
	public enum input: HTMLTag { public static let name = "input" }
	public enum label: HTMLTag { public static let name = "label" }
	public enum legend: HTMLTag { public static let name = "legend" }
	public enum meter: HTMLTag { public static let name = "meter" }
	public enum optgroup: HTMLTag { public static let name = "optgroup" }
	public enum option: HTMLTag { public static let name = "option" }
	public enum output: HTMLTag { public static let name = "output" }
	public enum progress: HTMLTag { public static let name = "progress" }
	public enum select: HTMLTag { public static let name = "select" }
	public enum textarea: HTMLTag { public static let name = "textarea" }
}

// MARK: - Interactive Elements

extension HTMLElement {
	public enum details: HTMLTag { public static let name = "details" }
	public enum dialog: HTMLTag { public static let name = "dialog" }
	public enum summary: HTMLTag { public static let name = "summary" }
}

// MARK: - Web Components

extension HTMLElement {
	public enum slot: HTMLTag { public static let name = "slot" }
	public enum template: HTMLTag { public static let name = "template" }
}
