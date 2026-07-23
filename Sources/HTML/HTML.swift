//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public protocol HTML {}
public enum HTMLTags {}

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

extension HTMLTags {
	public enum Root: HTML {}
	public enum Head: HTML {}
	public enum Body: HTML {}
}

// MARK: - Document Metadata

extension HTMLTags {
	public enum Base: HTML {}
	public enum Link: HTML {}
	public enum Meta: HTML {}
	public enum Style: HTML {}
	public enum Title: HTML {}
}

// MARK: - Content Sectioning

extension HTMLTags {
	public enum Address: HTML {}
	public enum Article: HTML {}
	public enum Aside: HTML {}
	public enum Footer: HTML {}
	public enum Header: HTML {}

	public enum H1: HTML {}
	public enum H2: HTML {}
	public enum H3: HTML {}
	public enum H4: HTML {}
	public enum H5: HTML {}
	public enum H6: HTML {}

	public enum Hgroup: HTML {}
	public enum Main: HTML {}
	public enum Nav: HTML {}
	public enum Search: HTML {}
	public enum Section: HTML {}
}

// MARK: - Text Content

extension HTMLTags {
	public enum Blockquote: HTML {}
	public enum Dd: HTML {}
	public enum Div: HTML {}
	public enum Dl: HTML {}
	public enum Dt: HTML {}
	public enum Figcaption: HTML {}
	public enum Figure: HTML {}
	public enum Hr: HTML {}
	public enum Li: HTML {}
	public enum Menu: HTML {}
	public enum Ol: HTML {}
	public enum P: HTML {}
	public enum Pre: HTML {}
	public enum Ul: HTML {}
}

// MARK: - Inline Text Semantics

extension HTMLTags {
	public enum A: HTML {}
	public enum Abbr: HTML {}
	public enum B: HTML {}
	public enum Bdi: HTML {}
	public enum Bdo: HTML {}
	public enum Br: HTML {}
	public enum Cite: HTML {}
	public enum Code: HTML {}
	public enum Data: HTML {}
	public enum Dfn: HTML {}
	public enum Em: HTML {}
	public enum I: HTML {}
	public enum Kbd: HTML {}
	public enum Mark: HTML {}
	public enum Q: HTML {}
	public enum Rp: HTML {}
	public enum Rt: HTML {}
	public enum Ruby: HTML {}
	public enum S: HTML {}
	public enum Samp: HTML {}
	public enum Small: HTML {}
	public enum Span: HTML {}
	public enum Strong: HTML {}
	public enum Sub: HTML {}
	public enum Sup: HTML {}
	public enum Time: HTML {}
	public enum U: HTML {}
	public enum Var: HTML {}
	public enum Wbr: HTML {}
}

// MARK: - Image and Multimedia

extension HTMLTags {
	public enum Area: HTML {}
	public enum Audio: HTML {}
	public enum Img: HTML {}
	public enum Map: HTML {}
	public enum Track: HTML {}
	public enum Video: HTML {}
}

// MARK: - Embeded Content

extension HTMLTags {
	public enum Embed: HTML {}
	public enum Iframe: HTML {}
	public enum Picture: HTML {}
	public enum Object: HTML {}
	public enum Source: HTML {}
}

// MARK: - Scripting

extension HTMLTags {
	public enum Canvas: HTML {}
	public enum Noscript: HTML {}
	public enum Script: HTML {}
}

// MARK: - Demarcating Edits

extension HTMLTags {
	public enum Del: HTML {}
	public enum Ins: HTML {}
}

// MARK: - Table Content

extension HTMLTags {
	public enum Caption: HTML {}
	public enum Colgroup: HTML {}
	public enum Col: HTML {}

	public enum Table: HTML {}
	public enum Thead: HTML {}
	public enum Tbody: HTML {}
	public enum Tfoot: HTML {}

	public enum Td: HTML {}
	public enum Th: HTML {}
	public enum Tr: HTML {}
}

// MARK: - Forms

extension HTMLTags {
	public enum Button: HTML {}
	public enum Datalist: HTML {}
	public enum Fieldset: HTML {}
	public enum Form: HTML {}
	public enum Input: HTML {}
	public enum Label: HTML {}
	public enum Legend: HTML {}
	public enum Meter: HTML {}
	public enum Optgroup: HTML {}
	public enum Option: HTML {}
	public enum Output: HTML {}
	public enum Progress: HTML {}
	public enum Select: HTML {}
	public enum Textarea: HTML {}
}

// MARK: - Interactive Elements

extension HTMLTags {
	public enum Details: HTML {}
	public enum Dialog: HTML {}
	public enum Summary: HTML {}
}

// MARK: - Web Components

extension HTMLTags {
	public enum Slot: HTML {}
	public enum Template: HTML {}
}
