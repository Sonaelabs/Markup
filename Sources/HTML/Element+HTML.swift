//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public typealias html<Content: HTML> = Element<HTMLElement.html, Content>
public typealias head<Content: HTML> = Element<HTMLElement.head, Content>
public typealias body<Content: HTML> = Element<HTMLElement.body, Content>

// MARK: - Document Metadata

public typealias base = VoidElement<HTMLElement.base>
public typealias link = VoidElement<HTMLElement.link>
public typealias meta = VoidElement<HTMLElement.meta>

public typealias title<Content: HTML> = Element<HTMLElement.title, Content>

// MARK: - Content Sectioning

public typealias address<Content: HTML> = Element<HTMLElement.address, Content>
public typealias article<Content: HTML> = Element<HTMLElement.article, Content>
public typealias aside<Content: HTML> = Element<HTMLElement.aside, Content>
public typealias footer<Content: HTML> = Element<HTMLElement.footer, Content>
public typealias header<Content: HTML> = Element<HTMLElement.header, Content>

public typealias h1<Content: HTML> = Element<HTMLElement.h1, Content>
public typealias h2<Content: HTML> = Element<HTMLElement.h2, Content>
public typealias h3<Content: HTML> = Element<HTMLElement.h3, Content>
public typealias h4<Content: HTML> = Element<HTMLElement.h4, Content>
public typealias h5<Content: HTML> = Element<HTMLElement.h5, Content>
public typealias h6<Content: HTML> = Element<HTMLElement.h6, Content>

public typealias hgroup<Content: HTML> = Element<HTMLElement.hgroup, Content>
public typealias main<Content: HTML> = Element<HTMLElement.main, Content>
public typealias nav<Content: HTML> = Element<HTMLElement.nav, Content>
public typealias search<Content: HTML> = Element<HTMLElement.search, Content>
public typealias section<Content: HTML> = Element<HTMLElement.section, Content>

// MARK: - Text Content

public typealias blockquote<Content: HTML> = Element<HTMLElement.blockquote, Content>
public typealias dd<Content: HTML> = Element<HTMLElement.dd, Content>
public typealias div<Content: HTML> = Element<HTMLElement.div, Content>
public typealias dl<Content: HTML> = Element<HTMLElement.dl, Content>
public typealias dt<Content: HTML> = Element<HTMLElement.dt, Content>
public typealias figcaption<Content: HTML> = Element<HTMLElement.figcaption, Content>
public typealias figure<Content: HTML> = Element<HTMLElement.figure, Content>
public typealias hr = VoidElement<HTMLElement.hr>
public typealias li<Content: HTML> = Element<HTMLElement.li, Content>
public typealias menu<Content: HTML> = Element<HTMLElement.menu, Content>
public typealias ol<Content: HTML> = Element<HTMLElement.ol, Content>
public typealias p<Content: HTML> = Element<HTMLElement.p, Content>
public typealias pre<Content: HTML> = Element<HTMLElement.pre, Content>
public typealias ul<Content: HTML> = Element<HTMLElement.ul, Content>

// MARK: - Inline Text Semantics

public typealias a<Content: HTML> = Element<HTMLElement.a, Content>
public typealias abbr<Content: HTML> = Element<HTMLElement.abbr, Content>
public typealias b<Content: HTML> = Element<HTMLElement.b, Content>
public typealias bdi<Content: HTML> = Element<HTMLElement.bdi, Content>
public typealias bdo<Content: HTML> = Element<HTMLElement.bdo, Content>
public typealias br = VoidElement<HTMLElement.br>
public typealias cite<Content: HTML> = Element<HTMLElement.cite, Content>
public typealias code<Content: HTML> = Element<HTMLElement.code, Content>
public typealias data<Content: HTML> = Element<HTMLElement.data, Content>
public typealias dfn<Content: HTML> = Element<HTMLElement.dfn, Content>
public typealias em<Content: HTML> = Element<HTMLElement.em, Content>
public typealias i<Content: HTML> = Element<HTMLElement.i, Content>
public typealias kbd<Content: HTML> = Element<HTMLElement.kbd, Content>
public typealias mark<Content: HTML> = Element<HTMLElement.mark, Content>
public typealias q<Content: HTML> = Element<HTMLElement.q, Content>
public typealias rp<Content: HTML> = Element<HTMLElement.rp, Content>
public typealias rt<Content: HTML> = Element<HTMLElement.rt, Content>
public typealias ruby<Content: HTML> = Element<HTMLElement.ruby, Content>
public typealias s<Content: HTML> = Element<HTMLElement.s, Content>
public typealias samp<Content: HTML> = Element<HTMLElement.samp, Content>
public typealias small<Content: HTML> = Element<HTMLElement.small, Content>
public typealias span<Content: HTML> = Element<HTMLElement.span, Content>
public typealias strong<Content: HTML> = Element<HTMLElement.strong, Content>
public typealias sub<Content: HTML> = Element<HTMLElement.sub, Content>
public typealias sup<Content: HTML> = Element<HTMLElement.sup, Content>
public typealias time<Content: HTML> = Element<HTMLElement.time, Content>
public typealias u<Content: HTML> = Element<HTMLElement.u, Content>
public typealias `var`<Content: HTML> = Element<HTMLElement.`var`, Content>
public typealias wbr = VoidElement<HTMLElement.wbr>

// MARK: - Image and Multimedia

public typealias area = VoidElement<HTMLElement.area>
public typealias audio<Content: HTML> = Element<HTMLElement.audio, Content>
public typealias img = VoidElement<HTMLElement.img>
public typealias map<Content: HTML> = Element<HTMLElement.map, Content>
public typealias track = VoidElement<HTMLElement.track>
public typealias video<Content: HTML> = Element<HTMLElement.video, Content>

// MARK: - Embeded Content

public typealias embed = VoidElement<HTMLElement.embed>
public typealias iframe<Content: HTML> = Element<HTMLElement.iframe, Content>
public typealias picture<Content: HTML> = Element<HTMLElement.picture, Content>
public typealias object<Content: HTML> = Element<HTMLElement.object, Content>
public typealias source = VoidElement<HTMLElement.source>

// MARK: - Scripting

public typealias canvas<Content: HTML> = Element<HTMLElement.canvas, Content>
public typealias noscript<Content: HTML> = Element<HTMLElement.noscript, Content>
public typealias script = Element<HTMLElement.script, Empty>

// MARK: - Demarcating Edits

public typealias del<Content: HTML> = Element<HTMLElement.del, Content>
public typealias ins<Content: HTML> = Element<HTMLElement.ins, Content>

// MARK: - Table Content

public typealias caption<Content: HTML> = Element<HTMLElement.caption, Content>
public typealias colgroup<Content: HTML> = Element<HTMLElement.colgroup, Content>
public typealias col = VoidElement<HTMLElement.col>

public typealias table<Content: HTML> = Element<HTMLElement.table, Content>
public typealias thead<Content: HTML> = Element<HTMLElement.thead, Content>
public typealias tbody<Content: HTML> = Element<HTMLElement.tbody, Content>
public typealias tfoot<Content: HTML> = Element<HTMLElement.tfoot, Content>

public typealias td<Content: HTML> = Element<HTMLElement.td, Content>
public typealias th<Content: HTML> = Element<HTMLElement.th, Content>
public typealias tr<Content: HTML> = Element<HTMLElement.tr, Content>

// MARK: - Forms

public typealias button<Content: HTML> = Element<HTMLElement.button, Content>
public typealias datalist<Content: HTML> = Element<HTMLElement.datalist, Content>
public typealias fieldset<Content: HTML> = Element<HTMLElement.fieldset, Content>
public typealias form<Content: HTML> = Element<HTMLElement.form, Content>
public typealias input = VoidElement<HTMLElement.input>
public typealias label<Content: HTML> = Element<HTMLElement.label, Content>
public typealias legend<Content: HTML> = Element<HTMLElement.legend, Content>
public typealias meter<Content: HTML> = Element<HTMLElement.meter, Content>
public typealias optgroup<Content: HTML> = Element<HTMLElement.optgroup, Content>
public typealias option<Content: HTML> = Element<HTMLElement.option, Content>
public typealias output<Content: HTML> = Element<HTMLElement.output, Content>
public typealias progress<Content: HTML> = Element<HTMLElement.progress, Content>
public typealias select<Content: HTML> = Element<HTMLElement.select, Content>
public typealias textarea<Content: HTML> = Element<HTMLElement.textarea, Content>

// MARK: - Interactive Elements

public typealias details<Content: HTML> = Element<HTMLElement.details, Content>
public typealias dialog<Content: HTML> = Element<HTMLElement.dialog, Content>
public typealias summary<Content: HTML> = Element<HTMLElement.summary, Content>

// MARK: - Web Components

public typealias slot<Content: HTML> = Element<HTMLElement.slot, Content>
public typealias template<Content: HTML> = Element<HTMLElement.template, Content>
