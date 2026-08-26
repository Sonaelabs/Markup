//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public typealias html<Content: HTML.Element> = Element<HTML, Content>
public typealias head<Content: HTML.Element> = Element<HTML.Head, Content>
public typealias body<Content: HTML.Element> = Element<HTML.Body, Content>

// MARK: - Document Metadata

public typealias base = VoidElement<HTML.Base>
public typealias link = VoidElement<HTML.Link>
public typealias meta = VoidElement<HTML.Meta>

public typealias title<Content: HTML.Element> = Element<HTML.Title, Content>

// MARK: - Content Sectioning

public typealias address<Content: HTML.Element> = Element<HTML.Address, Content>
public typealias article<Content: HTML.Element> = Element<HTML.Article, Content>
public typealias aside<Content: HTML.Element> = Element<HTML.Aside, Content>
public typealias footer<Content: HTML.Element> = Element<HTML.Footer, Content>
public typealias header<Content: HTML.Element> = Element<HTML.Header, Content>

public typealias h1<Content: HTML.Element> = Element<HTML.H1, Content>
public typealias h2<Content: HTML.Element> = Element<HTML.H2, Content>
public typealias h3<Content: HTML.Element> = Element<HTML.H3, Content>
public typealias h4<Content: HTML.Element> = Element<HTML.H4, Content>
public typealias h5<Content: HTML.Element> = Element<HTML.H5, Content>
public typealias h6<Content: HTML.Element> = Element<HTML.H6, Content>

public typealias hgroup<Content: HTML.Element> = Element<HTML.Hgroup, Content>
public typealias main<Content: HTML.Element> = Element<HTML.Main, Content>
public typealias nav<Content: HTML.Element> = Element<HTML.Nav, Content>
public typealias search<Content: HTML.Element> = Element<HTML.Search, Content>
public typealias section<Content: HTML.Element> = Element<HTML.Section, Content>

// MARK: - Text Content

public typealias blockquote<Content: HTML.Element> = Element<HTML.Blockquote, Content>
public typealias dd<Content: HTML.Element> = Element<HTML.Dd, Content>
public typealias div<Content: HTML.Element> = Element<HTML.Div, Content>
public typealias dl<Content: HTML.Element> = Element<HTML.Dl, Content>
public typealias dt<Content: HTML.Element> = Element<HTML.Dt, Content>
public typealias figcaption<Content: HTML.Element> = Element<HTML.Figcaption, Content>
public typealias figure<Content: HTML.Element> = Element<HTML.Figure, Content>
public typealias hr = VoidElement<HTML.Hr>
public typealias li<Content: HTML.Element> = Element<HTML.Li, Content>
public typealias menu<Content: HTML.Element> = Element<HTML.Menu, Content>
public typealias ol<Content: HTML.Element> = Element<HTML.Ol, Content>
public typealias p<Content: HTML.Element> = Element<HTML.P, Content>
public typealias pre<Content: HTML.Element> = Element<HTML.Pre, Content>
public typealias ul<Content: HTML.Element> = Element<HTML.Ul, Content>

// MARK: - Inline Text Semantics

public typealias a<Content: HTML.Element> = Element<HTML.A, Content>
public typealias abbr<Content: HTML.Element> = Element<HTML.Abbr, Content>
public typealias b<Content: HTML.Element> = Element<HTML.B, Content>
public typealias bdi<Content: HTML.Element> = Element<HTML.Bdi, Content>
public typealias bdo<Content: HTML.Element> = Element<HTML.Bdo, Content>
public typealias br = VoidElement<HTML.Br>
public typealias cite<Content: HTML.Element> = Element<HTML.Cite, Content>
public typealias code<Content: HTML.Element> = Element<HTML.Code, Content>
public typealias data<Content: HTML.Element> = Element<HTML.Data, Content>
public typealias dfn<Content: HTML.Element> = Element<HTML.Dfn, Content>
public typealias em<Content: HTML.Element> = Element<HTML.Em, Content>
public typealias i<Content: HTML.Element> = Element<HTML.I, Content>
public typealias kbd<Content: HTML.Element> = Element<HTML.Kbd, Content>
public typealias mark<Content: HTML.Element> = Element<HTML.Mark, Content>
public typealias q<Content: HTML.Element> = Element<HTML.Q, Content>
public typealias rp<Content: HTML.Element> = Element<HTML.Rp, Content>
public typealias rt<Content: HTML.Element> = Element<HTML.Rt, Content>
public typealias ruby<Content: HTML.Element> = Element<HTML.Ruby, Content>
public typealias s<Content: HTML.Element> = Element<HTML.S, Content>
public typealias samp<Content: HTML.Element> = Element<HTML.Samp, Content>
public typealias small<Content: HTML.Element> = Element<HTML.Small, Content>
public typealias span<Content: HTML.Element> = Element<HTML.Span, Content>
public typealias strong<Content: HTML.Element> = Element<HTML.Strong, Content>
public typealias sub<Content: HTML.Element> = Element<HTML.Sub, Content>
public typealias sup<Content: HTML.Element> = Element<HTML.Sup, Content>
public typealias time<Content: HTML.Element> = Element<HTML.Time, Content>
public typealias u<Content: HTML.Element> = Element<HTML.U, Content>
public typealias `var`<Content: HTML.Element> = Element<HTML.Var, Content>
public typealias wbr = VoidElement<HTML.Wbr>

// MARK: - Image and Multimedia

public typealias area = VoidElement<HTML.Area>
public typealias audio<Content: HTML.Element> = Element<HTML.Audio, Content>
public typealias img = VoidElement<HTML.Img>
public typealias map<Content: HTML.Element> = Element<HTML.Map, Content>
public typealias track = VoidElement<HTML.Track>
public typealias video<Content: HTML.Element> = Element<HTML.Video, Content>

// MARK: - Embeded Content

public typealias embed = VoidElement<HTML.Embed>
public typealias iframe<Content: HTML.Element> = Element<HTML.Iframe, Content>
public typealias picture<Content: HTML.Element> = Element<HTML.Picture, Content>
public typealias object<Content: HTML.Element> = Element<HTML.Object, Content>
public typealias source = VoidElement<HTML.Source>

// MARK: - Scripting

public typealias canvas<Content: HTML.Element> = Element<HTML.Canvas, Content>
public typealias noscript<Content: HTML.Element> = Element<HTML.Noscript, Content>
public typealias script = Element<HTML.Script, Empty>

// MARK: - Demarcating Edits

public typealias del<Content: HTML.Element> = Element<HTML.Del, Content>
public typealias ins<Content: HTML.Element> = Element<HTML.Ins, Content>

// MARK: - Table Content

public typealias caption<Content: HTML.Element> = Element<HTML.Caption, Content>
public typealias colgroup<Content: HTML.Element> = Element<HTML.Colgroup, Content>
public typealias col = VoidElement<HTML.Col>

public typealias table<Content: HTML.Element> = Element<HTML.Table, Content>
public typealias thead<Content: HTML.Element> = Element<HTML.Thead, Content>
public typealias tbody<Content: HTML.Element> = Element<HTML.Tbody, Content>
public typealias tfoot<Content: HTML.Element> = Element<HTML.Tfoot, Content>

public typealias td<Content: HTML.Element> = Element<HTML.Td, Content>
public typealias th<Content: HTML.Element> = Element<HTML.Th, Content>
public typealias tr<Content: HTML.Element> = Element<HTML.Tr, Content>

// MARK: - Forms

public typealias button<Content: HTML.Element> = Element<HTML.Button, Content>
public typealias datalist<Content: HTML.Element> = Element<HTML.Datalist, Content>
public typealias fieldset<Content: HTML.Element> = Element<HTML.Fieldset, Content>
public typealias form<Content: HTML.Element> = Element<HTML.Form, Content>
public typealias input = VoidElement<HTML.Input>
public typealias label<Content: HTML.Element> = Element<HTML.Label, Content>
public typealias legend<Content: HTML.Element> = Element<HTML.Legend, Content>
public typealias meter<Content: HTML.Element> = Element<HTML.Meter, Content>
public typealias optgroup<Content: HTML.Element> = Element<HTML.Optgroup, Content>
public typealias option<Content: HTML.Element> = Element<HTML.Option, Content>
public typealias output<Content: HTML.Element> = Element<HTML.Output, Content>
public typealias progress<Content: HTML.Element> = Element<HTML.Progress, Content>
public typealias select<Content: HTML.Element> = Element<HTML.Select, Content>
public typealias textarea<Content: HTML.Element> = Element<HTML.Textarea, Content>

// MARK: - Interactive Elements

public typealias details<Content: HTML.Element> = Element<HTML.Details, Content>
public typealias dialog<Content: HTML.Element> = Element<HTML.Dialog, Content>
public typealias summary<Content: HTML.Element> = Element<HTML.Summary, Content>

// MARK: - Web Components

public typealias slot<Content: HTML.Element> = Element<HTML.Slot, Content>
public typealias template<Content: HTML.Element> = Element<HTML.Template, Content>
