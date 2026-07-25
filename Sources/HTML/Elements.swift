//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public typealias html<Content: HTML & Node> = Element<HTMLTag.html, Content>
public typealias head<Content: HTML & Node> = Element<HTMLTag.head, Content>
public typealias body<Content: HTML & Node> = Element<HTMLTag.body, Content>

// MARK: - Document Metadata

public typealias base = VoidElement<HTMLTag.base>
public typealias link = VoidElement<HTMLTag.link>
public typealias meta = VoidElement<HTMLTag.meta>

public typealias title<Content: HTML & Node> = Element<HTMLTag.title, Content>

// MARK: - Content Sectioning

public typealias address<Content: HTML & Node> = Element<HTMLTag.address, Content>
public typealias article<Content: HTML & Node> = Element<HTMLTag.article, Content>
public typealias aside<Content: HTML & Node> = Element<HTMLTag.aside, Content>
public typealias footer<Content: HTML & Node> = Element<HTMLTag.footer, Content>
public typealias header<Content: HTML & Node> = Element<HTMLTag.header, Content>

public typealias h1<Content: HTML & Node> = Element<HTMLTag.h1, Content>
public typealias h2<Content: HTML & Node> = Element<HTMLTag.h2, Content>
public typealias h3<Content: HTML & Node> = Element<HTMLTag.h3, Content>
public typealias h4<Content: HTML & Node> = Element<HTMLTag.h4, Content>
public typealias h5<Content: HTML & Node> = Element<HTMLTag.h5, Content>
public typealias h6<Content: HTML & Node> = Element<HTMLTag.h6, Content>

public typealias hgroup<Content: HTML & Node> = Element<HTMLTag.hgroup, Content>
public typealias main<Content: HTML & Node> = Element<HTMLTag.main, Content>
public typealias nav<Content: HTML & Node> = Element<HTMLTag.nav, Content>
public typealias search<Content: HTML & Node> = Element<HTMLTag.search, Content>
public typealias section<Content: HTML & Node> = Element<HTMLTag.section, Content>

// MARK: - Text Content

public typealias blockquote<Content: HTML & Node> = Element<HTMLTag.blockquote, Content>
public typealias dd<Content: HTML & Node> = Element<HTMLTag.dd, Content>
public typealias div<Content: HTML & Node> = Element<HTMLTag.div, Content>
public typealias dl<Content: HTML & Node> = Element<HTMLTag.dl, Content>
public typealias dt<Content: HTML & Node> = Element<HTMLTag.dt, Content>
public typealias figcaption<Content: HTML & Node> = Element<HTMLTag.figcaption, Content>
public typealias figure<Content: HTML & Node> = Element<HTMLTag.figure, Content>
public typealias hr = VoidElement<HTMLTag.hr>
public typealias li<Content: HTML & Node> = Element<HTMLTag.li, Content>
public typealias menu<Content: HTML & Node> = Element<HTMLTag.menu, Content>
public typealias ol<Content: HTML & Node> = Element<HTMLTag.ol, Content>
public typealias p<Content: HTML & Node> = Element<HTMLTag.p, Content>
public typealias pre<Content: HTML & Node> = Element<HTMLTag.pre, Content>
public typealias ul<Content: HTML & Node> = Element<HTMLTag.ul, Content>

// MARK: - Inline Text Semantics

public typealias a<Content: HTML & Node> = Element<HTMLTag.a, Content>
public typealias abbr<Content: HTML & Node> = Element<HTMLTag.abbr, Content>
public typealias b<Content: HTML & Node> = Element<HTMLTag.b, Content>
public typealias bdi<Content: HTML & Node> = Element<HTMLTag.bdi, Content>
public typealias bdo<Content: HTML & Node> = Element<HTMLTag.bdo, Content>
public typealias br = VoidElement<HTMLTag.br>
public typealias cite<Content: HTML & Node> = Element<HTMLTag.cite, Content>
public typealias code<Content: HTML & Node> = Element<HTMLTag.code, Content>
public typealias data<Content: HTML & Node> = Element<HTMLTag.data, Content>
public typealias dfn<Content: HTML & Node> = Element<HTMLTag.dfn, Content>
public typealias em<Content: HTML & Node> = Element<HTMLTag.em, Content>
public typealias i<Content: HTML & Node> = Element<HTMLTag.i, Content>
public typealias kbd<Content: HTML & Node> = Element<HTMLTag.kbd, Content>
public typealias mark<Content: HTML & Node> = Element<HTMLTag.mark, Content>
public typealias q<Content: HTML & Node> = Element<HTMLTag.q, Content>
public typealias rp<Content: HTML & Node> = Element<HTMLTag.rp, Content>
public typealias rt<Content: HTML & Node> = Element<HTMLTag.rt, Content>
public typealias ruby<Content: HTML & Node> = Element<HTMLTag.ruby, Content>
public typealias s<Content: HTML & Node> = Element<HTMLTag.s, Content>
public typealias samp<Content: HTML & Node> = Element<HTMLTag.samp, Content>
public typealias small<Content: HTML & Node> = Element<HTMLTag.small, Content>
public typealias span<Content: HTML & Node> = Element<HTMLTag.span, Content>
public typealias strong<Content: HTML & Node> = Element<HTMLTag.strong, Content>
public typealias sub<Content: HTML & Node> = Element<HTMLTag.sub, Content>
public typealias sup<Content: HTML & Node> = Element<HTMLTag.sup, Content>
public typealias time<Content: HTML & Node> = Element<HTMLTag.time, Content>
public typealias u<Content: HTML & Node> = Element<HTMLTag.u, Content>
public typealias `var`<Content: HTML & Node> = Element<HTMLTag.`var`, Content>
public typealias wbr = VoidElement<HTMLTag.wbr>

// MARK: - Image and Multimedia

public typealias area = VoidElement<HTMLTag.area>
public typealias audio<Content: HTML & Node> = Element<HTMLTag.audio, Content>
public typealias img = VoidElement<HTMLTag.img>
public typealias map<Content: HTML & Node> = Element<HTMLTag.map, Content>
public typealias track = VoidElement<HTMLTag.track>
public typealias video<Content: HTML & Node> = Element<HTMLTag.video, Content>

// MARK: - Embeded Content

public typealias embed = VoidElement<HTMLTag.embed>
public typealias iframe<Content: HTML & Node> = Element<HTMLTag.iframe, Content>
public typealias picture<Content: HTML & Node> = Element<HTMLTag.picture, Content>
public typealias object<Content: HTML & Node> = Element<HTMLTag.object, Content>
public typealias source = VoidElement<HTMLTag.source>

// MARK: - Scripting

public typealias canvas<Content: HTML & Node> = Element<HTMLTag.canvas, Content>
public typealias noscript<Content: HTML & Node> = Element<HTMLTag.noscript, Content>
public typealias script = Element<HTMLTag.script, Empty>

// MARK: - Demarcating Edits

public typealias del<Content: HTML & Node> = Element<HTMLTag.del, Content>
public typealias ins<Content: HTML & Node> = Element<HTMLTag.ins, Content>

// MARK: - Table Content

public typealias caption<Content: HTML & Node> = Element<HTMLTag.caption, Content>
public typealias colgroup<Content: HTML & Node> = Element<HTMLTag.colgroup, Content>
public typealias col = VoidElement<HTMLTag.col>

public typealias table<Content: HTML & Node> = Element<HTMLTag.table, Content>
public typealias thead<Content: HTML & Node> = Element<HTMLTag.thead, Content>
public typealias tbody<Content: HTML & Node> = Element<HTMLTag.tbody, Content>
public typealias tfoot<Content: HTML & Node> = Element<HTMLTag.tfoot, Content>

public typealias td<Content: HTML & Node> = Element<HTMLTag.td, Content>
public typealias th<Content: HTML & Node> = Element<HTMLTag.th, Content>
public typealias tr<Content: HTML & Node> = Element<HTMLTag.tr, Content>

// MARK: - Forms

public typealias button<Content: HTML & Node> = Element<HTMLTag.button, Content>
public typealias datalist<Content: HTML & Node> = Element<HTMLTag.datalist, Content>
public typealias fieldset<Content: HTML & Node> = Element<HTMLTag.fieldset, Content>
public typealias form<Content: HTML & Node> = Element<HTMLTag.form, Content>
public typealias input = VoidElement<HTMLTag.input>
public typealias label<Content: HTML & Node> = Element<HTMLTag.label, Content>
public typealias legend<Content: HTML & Node> = Element<HTMLTag.legend, Content>
public typealias meter<Content: HTML & Node> = Element<HTMLTag.meter, Content>
public typealias optgroup<Content: HTML & Node> = Element<HTMLTag.optgroup, Content>
public typealias option<Content: HTML & Node> = Element<HTMLTag.option, Content>
public typealias output<Content: HTML & Node> = Element<HTMLTag.output, Content>
public typealias progress<Content: HTML & Node> = Element<HTMLTag.progress, Content>
public typealias select<Content: HTML & Node> = Element<HTMLTag.select, Content>
public typealias textarea<Content: HTML & Node> = Element<HTMLTag.textarea, Content>

// MARK: - Interactive Elements

public typealias details<Content: HTML & Node> = Element<HTMLTag.details, Content>
public typealias dialog<Content: HTML & Node> = Element<HTMLTag.dialog, Content>
public typealias summary<Content: HTML & Node> = Element<HTMLTag.summary, Content>

// MARK: - Web Components

public typealias slot<Content: HTML & Node> = Element<HTMLTag.slot, Content>
public typealias template<Content: HTML & Node> = Element<HTMLTag.template, Content>
