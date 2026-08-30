//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public typealias html<Content: HTML.Node> = HTML.Element<HTML, Content>
public typealias head<Content: HTML.Node> = HTML.Element<HTML.Head, Content>
public typealias body<Content: HTML.Node> = HTML.Element<HTML.Body, Content>

// MARK: - Document Metadata

public typealias base = HTML.VoidElement<HTML.Base>
public typealias link = HTML.VoidElement<HTML.Link>
public typealias meta = HTML.VoidElement<HTML.Meta>

public typealias title<Content: HTML.Node> = HTML.Element<HTML.Title, Content>

// MARK: - Content Sectioning

public typealias address<Content: HTML.Node> = HTML.Element<HTML.Address, Content>
public typealias article<Content: HTML.Node> = HTML.Element<HTML.Article, Content>
public typealias aside<Content: HTML.Node> = HTML.Element<HTML.Aside, Content>
public typealias footer<Content: HTML.Node> = HTML.Element<HTML.Footer, Content>
public typealias header<Content: HTML.Node> = HTML.Element<HTML.Header, Content>

public typealias h1<Content: HTML.Node> = HTML.Element<HTML.H1, Content>
public typealias h2<Content: HTML.Node> = HTML.Element<HTML.H2, Content>
public typealias h3<Content: HTML.Node> = HTML.Element<HTML.H3, Content>
public typealias h4<Content: HTML.Node> = HTML.Element<HTML.H4, Content>
public typealias h5<Content: HTML.Node> = HTML.Element<HTML.H5, Content>
public typealias h6<Content: HTML.Node> = HTML.Element<HTML.H6, Content>

public typealias hgroup<Content: HTML.Node> = HTML.Element<HTML.Hgroup, Content>
public typealias main<Content: HTML.Node> = HTML.Element<HTML.Main, Content>
public typealias nav<Content: HTML.Node> = HTML.Element<HTML.Nav, Content>
public typealias search<Content: HTML.Node> = HTML.Element<HTML.Search, Content>
public typealias section<Content: HTML.Node> = HTML.Element<HTML.Section, Content>

// MARK: - Text Content

public typealias blockquote<Content: HTML.Node> = HTML.Element<HTML.Blockquote, Content>
public typealias dd<Content: HTML.Node> = HTML.Element<HTML.Dd, Content>
public typealias div<Content: HTML.Node> = HTML.Element<HTML.Div, Content>
public typealias dl<Content: HTML.Node> = HTML.Element<HTML.Dl, Content>
public typealias dt<Content: HTML.Node> = HTML.Element<HTML.Dt, Content>
public typealias figcaption<Content: HTML.Node> = HTML.Element<HTML.Figcaption, Content>
public typealias figure<Content: HTML.Node> = HTML.Element<HTML.Figure, Content>
public typealias hr = HTML.VoidElement<HTML.Hr>
public typealias li<Content: HTML.Node> = HTML.Element<HTML.Li, Content>
public typealias menu<Content: HTML.Node> = HTML.Element<HTML.Menu, Content>
public typealias ol<Content: HTML.Node> = HTML.Element<HTML.Ol, Content>
public typealias p<Content: HTML.Node> = HTML.Element<HTML.P, Content>
public typealias pre<Content: HTML.Node> = HTML.Element<HTML.Pre, Content>
public typealias ul<Content: HTML.Node> = HTML.Element<HTML.Ul, Content>

// MARK: - Inline Text Semantics

public typealias a<Content: HTML.Node> = HTML.Element<HTML.A, Content>
public typealias abbr<Content: HTML.Node> = HTML.Element<HTML.Abbr, Content>
public typealias b<Content: HTML.Node> = HTML.Element<HTML.B, Content>
public typealias bdi<Content: HTML.Node> = HTML.Element<HTML.Bdi, Content>
public typealias bdo<Content: HTML.Node> = HTML.Element<HTML.Bdo, Content>
public typealias br = HTML.VoidElement<HTML.Br>
public typealias cite<Content: HTML.Node> = HTML.Element<HTML.Cite, Content>
public typealias code<Content: HTML.Node> = HTML.Element<HTML.Code, Content>
public typealias data<Content: HTML.Node> = HTML.Element<HTML.Data, Content>
public typealias dfn<Content: HTML.Node> = HTML.Element<HTML.Dfn, Content>
public typealias em<Content: HTML.Node> = HTML.Element<HTML.Em, Content>
public typealias i<Content: HTML.Node> = HTML.Element<HTML.I, Content>
public typealias kbd<Content: HTML.Node> = HTML.Element<HTML.Kbd, Content>
public typealias mark<Content: HTML.Node> = HTML.Element<HTML.Mark, Content>
public typealias q<Content: HTML.Node> = HTML.Element<HTML.Q, Content>
public typealias rp<Content: HTML.Node> = HTML.Element<HTML.Rp, Content>
public typealias rt<Content: HTML.Node> = HTML.Element<HTML.Rt, Content>
public typealias ruby<Content: HTML.Node> = HTML.Element<HTML.Ruby, Content>
public typealias s<Content: HTML.Node> = HTML.Element<HTML.S, Content>
public typealias samp<Content: HTML.Node> = HTML.Element<HTML.Samp, Content>
public typealias small<Content: HTML.Node> = HTML.Element<HTML.Small, Content>
public typealias span<Content: HTML.Node> = HTML.Element<HTML.Span, Content>
public typealias strong<Content: HTML.Node> = HTML.Element<HTML.Strong, Content>
public typealias sub<Content: HTML.Node> = HTML.Element<HTML.Sub, Content>
public typealias sup<Content: HTML.Node> = HTML.Element<HTML.Sup, Content>
public typealias time<Content: HTML.Node> = HTML.Element<HTML.Time, Content>
public typealias u<Content: HTML.Node> = HTML.Element<HTML.U, Content>
public typealias `var`<Content: HTML.Node> = HTML.Element<HTML.Var, Content>
public typealias wbr = HTML.VoidElement<HTML.Wbr>

// MARK: - Image and Multimedia

public typealias area = HTML.VoidElement<HTML.Area>
public typealias audio<Content: HTML.Node> = HTML.Element<HTML.Audio, Content>
public typealias img = HTML.VoidElement<HTML.Img>
public typealias map<Content: HTML.Node> = HTML.Element<HTML.Map, Content>
public typealias track = HTML.VoidElement<HTML.Track>
public typealias video<Content: HTML.Node> = HTML.Element<HTML.Video, Content>

// MARK: - Embeded Content

public typealias embed = HTML.VoidElement<HTML.Embed>
public typealias iframe<Content: HTML.Node> = HTML.Element<HTML.Iframe, Content>
public typealias picture<Content: HTML.Node> = HTML.Element<HTML.Picture, Content>
public typealias object<Content: HTML.Node> = HTML.Element<HTML.Object, Content>
public typealias source = HTML.VoidElement<HTML.Source>

// MARK: - Scripting

public typealias canvas<Content: HTML.Node> = HTML.Element<HTML.Canvas, Content>
public typealias noscript<Content: HTML.Node> = HTML.Element<HTML.Noscript, Content>
public typealias script = HTML.Element<HTML.Script, Empty>

// MARK: - Demarcating Edits

public typealias del<Content: HTML.Node> = HTML.Element<HTML.Del, Content>
public typealias ins<Content: HTML.Node> = HTML.Element<HTML.Ins, Content>

// MARK: - Table Content

public typealias caption<Content: HTML.Node> = HTML.Element<HTML.Caption, Content>
public typealias colgroup<Content: HTML.Node> = HTML.Element<HTML.Colgroup, Content>
public typealias col = HTML.VoidElement<HTML.Col>

public typealias table<Content: HTML.Node> = HTML.Element<HTML.Table, Content>
public typealias thead<Content: HTML.Node> = HTML.Element<HTML.Thead, Content>
public typealias tbody<Content: HTML.Node> = HTML.Element<HTML.Tbody, Content>
public typealias tfoot<Content: HTML.Node> = HTML.Element<HTML.Tfoot, Content>

public typealias td<Content: HTML.Node> = HTML.Element<HTML.Td, Content>
public typealias th<Content: HTML.Node> = HTML.Element<HTML.Th, Content>
public typealias tr<Content: HTML.Node> = HTML.Element<HTML.Tr, Content>

// MARK: - Forms

public typealias button<Content: HTML.Node> = HTML.Element<HTML.Button, Content>
public typealias datalist<Content: HTML.Node> = HTML.Element<HTML.Datalist, Content>
public typealias fieldset<Content: HTML.Node> = HTML.Element<HTML.Fieldset, Content>
public typealias form<Content: HTML.Node> = HTML.Element<HTML.Form, Content>
public typealias input = HTML.VoidElement<HTML.Input>
public typealias label<Content: HTML.Node> = HTML.Element<HTML.Label, Content>
public typealias legend<Content: HTML.Node> = HTML.Element<HTML.Legend, Content>
public typealias meter<Content: HTML.Node> = HTML.Element<HTML.Meter, Content>
public typealias optgroup<Content: HTML.Node> = HTML.Element<HTML.Optgroup, Content>
public typealias option<Content: HTML.Node> = HTML.Element<HTML.Option, Content>
public typealias output<Content: HTML.Node> = HTML.Element<HTML.Output, Content>
public typealias progress<Content: HTML.Node> = HTML.Element<HTML.Progress, Content>
public typealias select<Content: HTML.Node> = HTML.Element<HTML.Select, Content>
public typealias textarea<Content: HTML.Node> = HTML.Element<HTML.Textarea, Content>

// MARK: - Interactive Elements

public typealias details<Content: HTML.Node> = HTML.Element<HTML.Details, Content>
public typealias dialog<Content: HTML.Node> = HTML.Element<HTML.Dialog, Content>
public typealias summary<Content: HTML.Node> = HTML.Element<HTML.Summary, Content>

// MARK: - Web Components

public typealias slot<Content: HTML.Node> = HTML.Element<HTML.Slot, Content>
public typealias template<Content: HTML.Node> = HTML.Element<HTML.Template, Content>
