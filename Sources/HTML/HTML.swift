//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public protocol HTML {}

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

// MARK: -

public enum HTMLTags {
	public protocol Abortable: Failable {}
	public protocol Failable {}
	public protocol Loadable {}
	public protocol Playable: Abortable {}
	public protocol Resizable {}
	public protocol Visible {}
}

// MARK: - Main Root

extension HTMLTags {
	public enum Root: HTML {}
	public enum Head: HTML {}
	public enum Body: HTML, Failable, Loadable, Resizable, Visible {}
}

// MARK: - Document Metadata

extension HTMLTags {
	public enum Base: HTML {}
	public enum Link: HTML, Failable, Loadable {}
	public enum Meta: HTML {}
	public enum Style: HTML, Failable, Loadable {}
	public enum Title: HTML {}
}

// MARK: - Content Sectioning

extension HTMLTags {
	public enum Address: HTML, Visible {}
	public enum Article: HTML, Visible {}
	public enum Aside: HTML, Visible {}
	public enum Footer: HTML, Visible {}
	public enum Header: HTML, Visible {}

	public enum H1: HTML, Visible {}
	public enum H2: HTML, Visible {}
	public enum H3: HTML, Visible {}
	public enum H4: HTML, Visible {}
	public enum H5: HTML, Visible {}
	public enum H6: HTML, Visible {}

	public enum Hgroup: HTML, Visible {}
	public enum Main: HTML, Visible {}
	public enum Nav: HTML, Visible {}
	public enum Search: HTML, Visible {}
	public enum Section: HTML, Visible {}
}

// MARK: - Text Content

extension HTMLTags {
	public enum Blockquote: HTML, Visible {}
	public enum Dd: HTML, Visible {}
	public enum Div: HTML, Visible {}
	public enum Dl: HTML, Visible {}
	public enum Dt: HTML, Visible {}
	public enum Figcaption: HTML, Visible {}
	public enum Figure: HTML, Visible {}
	public enum Hr: HTML, Visible {}
	public enum Li: HTML, Visible {}
	public enum Menu: HTML, Visible {}
	public enum Ol: HTML, Visible {}
	public enum P: HTML, Visible {}
	public enum Pre: HTML, Visible {}
	public enum Ul: HTML, Visible {}
}

// MARK: - Inline Text Semantics

extension HTMLTags {
	public enum A: HTML, Visible {}
	public enum Abbr: HTML, Visible {}
	public enum B: HTML, Visible {}
	public enum Bdi: HTML, Visible {}
	public enum Bdo: HTML, Visible {}
	public enum Br: HTML, Visible {}
	public enum Cite: HTML, Visible {}
	public enum Code: HTML, Visible {}
	public enum Data: HTML, Visible {}
	public enum Dfn: HTML, Visible {}
	public enum Em: HTML, Visible {}
	public enum I: HTML, Visible {}
	public enum Kbd: HTML, Visible {}
	public enum Mark: HTML, Visible {}
	public enum Q: HTML, Visible {}
	public enum Rp: HTML, Visible {}
	public enum Rt: HTML, Visible {}
	public enum Ruby: HTML, Visible {}
	public enum S: HTML, Visible {}
	public enum Samp: HTML, Visible {}
	public enum Small: HTML, Visible {}
	public enum Span: HTML, Visible {}
	public enum Strong: HTML, Visible {}
	public enum Sub: HTML, Visible {}
	public enum Sup: HTML, Visible {}
	public enum Time: HTML, Visible {}
	public enum U: HTML, Visible {}
	public enum Var: HTML, Visible {}
	public enum Wbr: HTML, Visible {}
}

// MARK: - Image and Multimedia

extension HTMLTags {
	public enum Area: HTML, Visible {}
	public enum Audio: HTML, Playable, Visible {}
	public enum Img: HTML, Abortable, Loadable, Visible {}
	public enum Map: HTML, Visible {}
	public enum Track: HTML, Failable, Loadable {}
	public enum Video: HTML, Playable, Resizable, Visible {}
}

// MARK: - Embeded Content

extension HTMLTags {
	public enum Embed: HTML, Abortable, Loadable, Visible {}
	public enum Iframe: HTML, Loadable, Visible {}
	public enum Picture: HTML, Visible {}
	public enum Object: HTML, Abortable, Loadable, Visible {}
	public enum Source: HTML, Failable {}
}

// MARK: - Scripting

extension HTMLTags {
	public enum Canvas: HTML, Visible {}
	public enum Noscript: HTML, Visible {}
	public enum Script: HTML, Failable, Loadable {}
}

// MARK: - Demarcating Edits

extension HTMLTags {
	public enum Del: HTML, Visible {}
	public enum Ins: HTML, Visible {}
}

// MARK: - Table Content

extension HTMLTags {
	public enum Caption: HTML, Visible {}
	public enum Colgroup: HTML, Visible {}
	public enum Col: HTML, Visible {}

	public enum Table: HTML, Visible {}
	public enum Thead: HTML, Visible {}
	public enum Tbody: HTML, Visible {}
	public enum Tfoot: HTML, Visible {}

	public enum Td: HTML, Visible {}
	public enum Th: HTML, Visible {}
	public enum Tr: HTML, Visible {}
}

// MARK: - Forms

extension HTMLTags {
	public enum Button: HTML, Visible {}
	public enum Datalist: HTML {}
	public enum Fieldset: HTML, Visible {}
	public enum Form: HTML, Visible {}
	public enum Input: HTML, Abortable, Loadable, Visible {}
	public enum Label: HTML, Visible {}
	public enum Legend: HTML, Visible {}
	public enum Meter: HTML, Visible {}
	public enum Optgroup: HTML, Visible {}
	public enum Option: HTML, Visible {}
	public enum Output: HTML, Visible {}
	public enum Progress: HTML, Visible {}
	public enum Select: HTML, Visible {}
	public enum Textarea: HTML, Visible {}
}

// MARK: - Interactive Elements

extension HTMLTags {
	public enum Details: HTML, Visible {}
	public enum Dialog: HTML, Visible {}
	public enum Summary: HTML, Visible {}
}

// MARK: - Web Components

extension HTMLTags {
	public enum Slot: HTML, Visible {}
	public enum Template: HTML {}
}
