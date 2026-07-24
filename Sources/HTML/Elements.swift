//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

/// Creates an `<html>` element.
@inlinable public func html<Content: Node>(_ attributes: Attribute<HTMLTag.Root>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Root, Content> {
	.init(name: "html", attributes: attributes, build: build)
}

/// Creates an `<html lang="...">` element.
@inlinable public func html<Content: Node>(lang: consuming Language, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Root, Content> {
	html(.lang(lang), build: build)
}

/// Creates a `<head>` element.
@inlinable public func head<Content: Node>(_ attributes: Attribute<HTMLTag.Head>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Head, Content> {
	.init(name: "head", attributes: attributes, build: build)
}

/// Creates a `<body>` element.
@inlinable public func body<Content: Node>(_ attributes: Attribute<HTMLTag.Body>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Body, Content> {
	.init(name: "body", attributes: attributes, build: build)
}


// MARK: - Document Metadata

/// Creates a `<base>` element.
@inlinable public func base(_ attributes: Attribute<HTMLTag.Base>...) -> VoidElement<HTMLTag.Base> {
	.init(name: "base", attributes: attributes)
}

/// Creates a `<base href="...">` element.
@inlinable public func base(href: consuming String) -> VoidElement<HTMLTag.Base> {
	base(.href(href))
}

/// Creates a `<link>` element.
@inlinable public func link(_ attributes: Attribute<HTMLTag.Link>...) -> VoidElement<HTMLTag.Link> {
	.init(name: "link", attributes: attributes)
}

/// Creates a `<link rel="stylesheet" href="...">` element.
@inlinable public func link(stylesheet href: consuming String) -> VoidElement<HTMLTag.Link> {
	link(.rel(.stylesheet), .href(href))
}

/// Creates a `<link rel="icon" href="...">` element.
@inlinable public func link(icon href: consuming String) -> VoidElement<HTMLTag.Link> {
	link(.rel(.icon), .href(href))
}

/// Creates a `<link rel="canonical" href="...">` element.
@inlinable public func link(canonical href: consuming String) -> VoidElement<HTMLTag.Link> {
	link(.rel(.canonical), .href(href))
}

/// Creates a `<link rel="preconnect" href="">` element.
@inlinable public func link(preconnect href: consuming String) -> VoidElement<HTMLTag.Link> {
	link(.rel(.preconnect), .href(href))
}

/// Creates a `<link rel="dns-prefetch" href="...">` element.
@inlinable public func link(dnsPrefetch href: consuming String) -> VoidElement<HTMLTag.Link> {
	link(.rel(.dnsPrefetch), .href(href))
}

/// Creates a `<meta>` element.
@inlinable public func meta(_ attributes: Attribute<HTMLTag.Meta>...) -> VoidElement<HTMLTag.Meta> {
	.init(name: "meta", attributes: attributes)
}

/// Creates a `<meta charset="...">` element.
@inlinable public func meta(charset: consuming Charset) -> VoidElement<HTMLTag.Meta> {
	meta(.charset(charset))
}

/// Creates a `<meta name="..." content="...">` element.
@inlinable public func meta(name: consuming String, content: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.name(name), .content(content))
}

/// Creates a `<meta name="author" content="...">` element.
@inlinable public func meta(author: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.name("author"), .content(author))
}

/// Creates a `<meta name="description" content="...">` element.
@inlinable public func meta(description: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.name("description"), .content(description))
}

/// Creates a `<meta name="keywords" content="...">` element.
@inlinable public func meta(keywords: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.name("keywords"), .content(keywords))
}

/// Creates a `<meta name="viewport" content="...">` element.
@inlinable public func meta(viewport: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.name("viewport"), .content(viewport))
}


/// Creates a `<meta http-equiv="..." content="...">` element.
@inlinable public func meta(httpEquiv: consuming String, content: consuming String) -> VoidElement<HTMLTag.Meta> {
	meta(.httpEquiv(httpEquiv), .content(content))
}

/// Creates a `<title>` element.
@inlinable public func title<Content: Node>(_ attributes: Attribute<HTMLTag.Title>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Title, Content> {
	.init(name: "title", attributes: attributes, build: build)
}


// MARK: - Content Sectioning

/// Creates an `<address>` element.
@inlinable public func address<Content: Node>(_ attributes: Attribute<HTMLTag.Address>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Address, Content> {
	.init(name: "address", attributes: attributes, build: build)
}

/// Creates an `<article>` element.
@inlinable public func article<Content: Node>(_ attributes: Attribute<HTMLTag.Article>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Article, Content> {
	.init(name: "article", attributes: attributes, build: build)
}

/// Creates an `<aside>` element.
@inlinable public func aside<Content: Node>(_ attributes: Attribute<HTMLTag.Aside>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Aside, Content> {
	.init(name: "aside", attributes: attributes, build: build)
}

/// Creates a `<footer>` element.
@inlinable public func footer<Content: Node>(_ attributes: Attribute<HTMLTag.Footer>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Footer, Content> {
	.init(name: "footer", attributes: attributes, build: build)
}

/// Creates a `<header>` element.
@inlinable public func header<Content: Node>(_ attributes: Attribute<HTMLTag.Header>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Header, Content> {
	.init(name: "header", attributes: attributes, build: build)
}

/// Creates a `<h1>` element.
@inlinable public func h1<Content: Node>(_ attributes: Attribute<HTMLTag.H1>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H1, Content> {
	.init(name: "h1", attributes: attributes, build: build)
}

/// Creates a `<h2>` element.
@inlinable public func h2<Content: Node>(_ attributes: Attribute<HTMLTag.H2>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H2, Content> {
	.init(name: "h2", attributes: attributes, build: build)
}

/// Creates a `<h3>` element.
@inlinable public func h3<Content: Node>(_ attributes: Attribute<HTMLTag.H3>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H3, Content> {
	.init(name: "h3", attributes: attributes, build: build)
}

/// Creates a `<h4>` element.
@inlinable public func h4<Content: Node>(_ attributes: Attribute<HTMLTag.H4>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H4, Content> {
	.init(name: "h4", attributes: attributes, build: build)
}

/// Creates a `<h5>` element.
@inlinable public func h5<Content: Node>(_ attributes: Attribute<HTMLTag.H5>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H5, Content> {
	.init(name: "h5", attributes: attributes, build: build)
}

/// Creates a `<h6>` element.
@inlinable public func h6<Content: Node>(_ attributes: Attribute<HTMLTag.H6>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.H6, Content> {
	.init(name: "h6", attributes: attributes, build: build)
}

/// Creates an `<hgroup>` element.
@inlinable public func hgroup<Content: Node>(_ attributes: Attribute<HTMLTag.Hgroup>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Hgroup, Content> {
	.init(name: "hgroup", attributes: attributes, build: build)
}

/// Creates a `<main>` element.
@inlinable public func main<Content: Node>(_ attributes: Attribute<HTMLTag.Main>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Main, Content> {
	.init(name: "main", attributes: attributes, build: build)
}

/// Creates a `<nav>` element.
@inlinable public func nav<Content: Node>(_ attributes: Attribute<HTMLTag.Nav>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Nav, Content> {
	.init(name: "nav", attributes: attributes, build: build)
}

/// Creates a `<section>` element.
@inlinable public func section<Content: Node>(_ attributes: Attribute<HTMLTag.Section>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Section, Content> {
	.init(name: "section", attributes: attributes, build: build)
}

/// Creates a `<search>` element.
@inlinable public func search<Content: Node>(_ attributes: Attribute<HTMLTag.Search>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Search, Content> {
	.init(name: "search", attributes: attributes, build: build)
}


// MARK: - Text Content

/// Creates a `<blockquote>` element.
@inlinable public func blockquote<Content: Node>(_ attributes: Attribute<HTMLTag.Blockquote>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Blockquote, Content> {
	.init(name: "blockquote", attributes: attributes, build: build)
}

/// Creates a `<blockquote cite="...">` element.
@inlinable public func blockquote<Content: Node>(cite url: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Blockquote, Content> {
	blockquote(.cite(url), build: build)
}

/// Creates a `<dd>` element.
@inlinable public func dd<Content: Node>(_ attributes: Attribute<HTMLTag.Dd>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Dd, Content> {
	.init(name: "dd", attributes: attributes, build: build)
}

/// Creates a `<div>` element.
@inlinable public func div<Content: Node>(_ attributes: Attribute<HTMLTag.Div>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Div, Content> {
	.init(name: "div", attributes: attributes, build: build)
}

/// Creates a `<dl>` element.
@inlinable public func dl<Content: Node>(_ attributes: Attribute<HTMLTag.Dl>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Dl, Content> {
	.init(name: "dl", attributes: attributes, build: build)
}

/// Creates a `<dt>` element.
@inlinable public func dt<Content: Node>(_ attributes: Attribute<HTMLTag.Dt>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Dt, Content> {
	.init(name: "dt", attributes: attributes, build: build)
}

/// Creates a `<figcaption>` element.
@inlinable public func figcaption<Content: Node>(_ attributes: Attribute<HTMLTag.Figcaption>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Figcaption, Content> {
	.init(name: "figcaption", attributes: attributes, build: build)
}

/// Creates a `<figure>` element.
@inlinable public func figure<Content: Node>(_ attributes: Attribute<HTMLTag.Figure>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Figure, Content> {
	.init(name: "figure", attributes: attributes, build: build)
}

/// Creates an `<hr>` element.
@inlinable public func hr(_ attributes: Attribute<HTMLTag.Hr>...) -> VoidElement<HTMLTag.Hr> {
	.init(name: "hr", attributes: attributes)
}

/// Creates an `<li>` element.
@inlinable public func li<Content: Node>(_ attributes: Attribute<HTMLTag.Li>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Li, Content> {
	.init(name: "li", attributes: attributes, build: build)
}

/// Creates a `<menu>` element.
@inlinable public func menu<Content: Node>(_ attributes: Attribute<HTMLTag.Menu>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Menu, Content> {
	.init(name: "menu", attributes: attributes, build: build)
}

/// Creates an `<ol>` element.
@inlinable public func ol<Content: Node>(_ attributes: Attribute<HTMLTag.Ol>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ol, Content> {
	.init(name: "ol", attributes: attributes, build: build)
}

/// Creates an `<ol>` element.
@inlinable public func ol<Content: Node>(start: consuming Int, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ol, Content> {
	ol(.start(start), build: build)
}

/// Creates a `<p>` element.
@inlinable public func p<Content: Node>(_ attributes: Attribute<HTMLTag.P>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.P, Content> {
	.init(name: "p", attributes: attributes, build: build)
}

/// Creates a `<pre>` element.
@inlinable public func pre<Content: Node>(_ attributes: Attribute<HTMLTag.Pre>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Pre, Content> {
	.init(name: "pre", attributes: attributes, build: build)
}

/// Creates a `<ul>` element.
@inlinable public func ul<Content: Node>(_ attributes: Attribute<HTMLTag.Ul>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ul, Content> {
	.init(name: "ul", attributes: attributes, build: build)
}


// MARK: - Inline Text Semantics

/// Creates an `<a>` element.
@inlinable public func a<Content: Node>(_ attributes: Attribute<HTMLTag.A>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.A, Content> {
	.init(name: "a", attributes: attributes, build: build)
}

/// Creates an `<a href="...">` element.
@inlinable public func a<Content: Node>(href: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.A, Content> {
	a(.href(href), build: build)
}

/// Creates an `<abbr>` element.
@inlinable public func abbr<Content: Node>(_ attributes: Attribute<HTMLTag.Abbr>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Abbr, Content> {
	.init(name: "abbr", attributes: attributes, build: build)
}

/// Creates a `<b>` element.
@inlinable public func b<Content: Node>(_ attributes: Attribute<HTMLTag.B>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.B, Content> {
	.init(name: "b", attributes: attributes, build: build)
}

/// Creates a `<bdi>` element.
@inlinable public func bdi<Content: Node>(_ attributes: Attribute<HTMLTag.Bdi>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Bdi, Content> {
	.init(name: "bdi", attributes: attributes, build: build)
}

/// Creates a `<bdo>` element.
@inlinable public func bdo<Content: Node>(_ attributes: Attribute<HTMLTag.Bdo>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Bdo, Content> {
	.init(name: "bdo", attributes: attributes, build: build)
}

/// Creates a `<br>` element.
@inlinable public func br(_ attributes: Attribute<HTMLTag.Br>...) -> VoidElement<HTMLTag.Br> {
	.init(name: "br", attributes: attributes)
}

/// Creates a `<cite>` element.
@inlinable public func cite<Content: Node>(_ attributes: Attribute<HTMLTag.Cite>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Cite, Content> {
	.init(name: "cite", attributes: attributes, build: build)
}

/// Creates a `<code>` element.
@inlinable public func code<Content: Node>(_ attributes: Attribute<HTMLTag.Code>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Code, Content> {
	.init(name: "code", attributes: attributes, build: build)
}

/// Creates a `<data>` element.
@inlinable public func data<Content: Node>(_ attributes: Attribute<HTMLTag.Data>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Data, Content> {
	.init(name: "data", attributes: attributes, build: build)
}

/// Creates a `<data value="...">` element.
@inlinable public func data<Content: Node>(value: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Data, Content> {
	data(.value(value), build: build)
}

/// Creates a `<dfn>` element.
@inlinable public func dfn<Content: Node>(_ attributes: Attribute<HTMLTag.Dfn>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Dfn, Content> {
	.init(name: "dfn", attributes: attributes, build: build)
}

/// Creates an `<em>` element.
@inlinable public func em<Content: Node>(_ attributes: Attribute<HTMLTag.Em>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Em, Content> {
	.init(name: "em", attributes: attributes, build: build)
}

/// Creates an `<i>` element.
@inlinable public func i<Content: Node>(_ attributes: Attribute<HTMLTag.I>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.I, Content> {
	.init(name: "i", attributes: attributes, build: build)
}

/// Creates a `<kbd>` element.
@inlinable public func kbd<Content: Node>(_ attributes: Attribute<HTMLTag.Kbd>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Kbd, Content> {
	.init(name: "kbd", attributes: attributes, build: build)
}

/// Creates a `<mark>` element.
@inlinable public func mark<Content: Node>(_ attributes: Attribute<HTMLTag.Mark>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Mark, Content> {
	.init(name: "mark", attributes: attributes, build: build)
}

/// Creates a `<q>` element.
@inlinable public func q<Content: Node>(_ attributes: Attribute<HTMLTag.Q>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Q, Content> {
	.init(name: "q", attributes: attributes, build: build)
}

/// Creates a `<q cite="...">` element.
@inlinable public func q<Content: Node>(cite url: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Q, Content> {
	q(.cite(url), build: build)
}

/// Creates an `<rp>` element.
@inlinable public func rp<Content: Node>(_ attributes: Attribute<HTMLTag.Rp>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Rp, Content> {
	.init(name: "rp", attributes: attributes, build: build)
}

/// Creates an `<rt>` element.
@inlinable public func rt<Content: Node>(_ attributes: Attribute<HTMLTag.Rt>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Rt, Content> {
	.init(name: "rt", attributes: attributes, build: build)
}

/// Creates a `<ruby>` element.
@inlinable public func ruby<Content: Node>(_ attributes: Attribute<HTMLTag.Ruby>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ruby, Content> {
	.init(name: "ruby", attributes: attributes, build: build)
}

/// Creates an `<s>` element.
@inlinable public func s<Content: Node>(_ attributes: Attribute<HTMLTag.S>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.S, Content> {
	.init(name: "s", attributes: attributes, build: build)
}

/// Creates a `<samp>` element.
@inlinable public func samp<Content: Node>(_ attributes: Attribute<HTMLTag.Samp>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Samp, Content> {
	.init(name: "samp", attributes: attributes, build: build)
}

/// Creates a `<small>` element.
@inlinable public func small<Content: Node>(_ attributes: Attribute<HTMLTag.Small>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Small, Content> {
	.init(name: "small", attributes: attributes, build: build)
}

/// Creates a `<span>` element.
@inlinable public func span<Content: Node>(_ attributes: Attribute<HTMLTag.Span>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Span, Content> {
	.init(name: "span", attributes: attributes, build: build)
}

/// Creates a `<strong>` element.
@inlinable public func strong<Content: Node>(_ attributes: Attribute<HTMLTag.Strong>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Strong, Content> {
	.init(name: "strong", attributes: attributes, build: build)
}

/// Creates a `<sub>` element.
@inlinable public func sub<Content: Node>(_ attributes: Attribute<HTMLTag.Sub>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Sub, Content> {
	.init(name: "sub", attributes: attributes, build: build)
}

/// Creates a `<sup>` element.
@inlinable public func sup<Content: Node>(_ attributes: Attribute<HTMLTag.Sup>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Sup, Content> {
	.init(name: "sup", attributes: attributes, build: build)
}

/// Creates a `<time>` element.
@inlinable public func time<Content: Node>(_ attributes: Attribute<HTMLTag.Time>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Time, Content> {
	.init(name: "time", attributes: attributes, build: build)
}

/// Creates a `<time datetime="...">` element.
@inlinable public func time<Content: Node>(dateTime: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Time, Content> {
	time(.dateTime(dateTime), build: build)
}

/// Creates a `<u>` element.
@inlinable public func u<Content: Node>(_ attributes: Attribute<HTMLTag.U>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.U, Content> {
	.init(name: "u", attributes: attributes, build: build)
}

/// Creates a `<var>` element.
@inlinable public func `var` <Content: Node>(_ attributes: Attribute<HTMLTag.Var>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Var, Content> {
	.init(name: "var", attributes: attributes, build: build)
}

/// Creates a `<wbr>` element.
@inlinable public func wbr(_ attributes: Attribute<HTMLTag.Wbr>...) -> VoidElement<HTMLTag.Wbr> {
	.init(name: "wbr", attributes: attributes)
}


// MARK: - Image and Multimedia

/// Creates an `<area>` element.
@inlinable public func area(_ attributes: Attribute<HTMLTag.Area>...) -> VoidElement<HTMLTag.Area> {
	.init(name: "area", attributes: attributes)
}

/// Creates an `<area href="...">` element.
@inlinable public func area(href: consuming String, alt: consuming String) -> VoidElement<HTMLTag.Area> {
	area(.href(href), .alt(alt))
}

/// Creates an `<audio>` element.
@inlinable public func audio<Content: Node>(_ attributes: Attribute<HTMLTag.Audio>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Audio, Content> {
	.init(name: "audio", attributes: attributes, build: build)
}

/// Creates an `<audio src="...">` element.
@inlinable public func audio<Content: Node>(src: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Audio, Content> {
	audio(.src(src), build: build)
}

/// Creates an `<img>` element.
@inlinable public func img(_ attributes: Attribute<HTMLTag.Img>...) -> VoidElement<HTMLTag.Img> {
	.init(name: "img", attributes: attributes)
}

/// Creates an `<img src="..." alt="...">` element.
@inlinable public func img(src: consuming String, alt: consuming String) -> VoidElement<HTMLTag.Img> {
	img(.src(src), .alt(alt))
}

/// Creates an `<img src="..." alt="..." width="..." height="...">` element.
@inlinable public func img(src: consuming String, alt: consuming String, width: consuming Int, height: consuming Int) -> VoidElement<HTMLTag.Img> {
	img(.src(src), .alt(alt), .width(width), .height(height))
}

/// Creates a `<map>` element.
@inlinable public func map<Content: Node>(_ attributes: Attribute<HTMLTag.Map>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Map, Content> {
	.init(name: "map", attributes: attributes, build: build)
}

/// Creates a `<map name="...">` element.
@inlinable public func map<Content: Node>(name: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Map, Content> {
	map(.name(name), build: build)
}

/// Creates a `<track>` element.
@inlinable public func track(_ attributes: Attribute<HTMLTag.Track>...) -> VoidElement<HTMLTag.Track> {
	.init(name: "track", attributes: attributes)
}

/// Creates a `<track src="..." kind="..." srclang="...">` element.
@inlinable public func track(src: consuming String, kind: consuming TrackKind, srcLang: consuming String) -> VoidElement<HTMLTag.Track> {
	track(.src(src), .kind(kind), .srcLang(srcLang))
}

/// Creates a `<video>` element.
@inlinable public func video<Content: Node>(_ attributes: Attribute<HTMLTag.Video>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Video, Content> {
	.init(name: "video", attributes: attributes, build: build)
}

/// Creates a `<video src="...">` element.
@inlinable public func video<Content: Node>(src: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Video, Content> {
	video(.src(src), build: build)
}


// MARK: - Embeded Content

/// Creates an `<embed>` element.
@inlinable public func embed(_ attributes: Attribute<HTMLTag.Embed>...) -> VoidElement<HTMLTag.Embed> {
	.init(name: "embed", attributes: attributes)
}

/// Creates an `<embed src="..." type="...">` element.
@inlinable public func embed(src: consuming String, type: consuming String) -> VoidElement<HTMLTag.Embed> {
	embed(.src(src), .type(type))
}

/// Creates an `<iframe>` element.
@inlinable public func iframe<Content: Node>(_ attributes: Attribute<HTMLTag.Iframe>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Iframe, Content> {
	.init(name: "iframe", attributes: attributes, build: build)
}

/// Creates an `<iframe src="...">` element.
@inlinable public func iframe<Content: Node>(src: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Iframe, Content> {
	iframe(.src(src), build: build)
}

/// Creates a `<picture>` element.
@inlinable public func picture<Content: Node>(_ attributes: Attribute<HTMLTag.Picture>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Picture, Content> {
	.init(name: "picture", attributes: attributes, build: build)
}

/// Creates an `<object>` element.
@inlinable public func object<Content: Node>(_ attributes: Attribute<HTMLTag.Object>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Object, Content> {
	.init(name: "object", attributes: attributes, build: build)
}

/// Creates an `<object data="..." type="...">` element.
@inlinable public func object<Content: Node>(data: consuming String, type: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Object, Content> {
	object(.data(data), .type(type), build: build)
}

/// Creates a `<source>` element.
@inlinable public func source(_ attributes: Attribute<HTMLTag.Source>...) -> VoidElement<HTMLTag.Source> {
	.init(name: "source", attributes: attributes)
}

/// Creates a `<source src="..." type="...">` element.
@inlinable public func source(src: consuming String, type: consuming String) -> VoidElement<HTMLTag.Source> {
	source(.src(src), .type(type))
}


// MARK: - Scripting

/// Creates a `<canvas>` element.
@inlinable public func canvas<Content: Node>(_ attributes: Attribute<HTMLTag.Canvas>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Canvas, Content> {
	.init(name: "canvas", attributes: attributes, build: build)
}

/// Creates a `<canvas width="..." height="...">` element.
@inlinable public func canvas<Content: Node>(width: consuming Int, height: consuming Int, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Canvas, Content> {
	canvas(.width(width), .height(height), build: build)
}

/// Creates a `<noscript>` element.
@inlinable public func noscript<Content: Node>(_ attributes: Attribute<HTMLTag.Noscript>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Noscript, Content> {
	.init(name: "noscript", attributes: attributes, build: build)
}

/// Creates a `<script>` element.
@inlinable public func script(_ attributes: Attribute<HTMLTag.Script>...) -> Element<HTMLTag.Script, Empty> {
	.init(name: "script", attributes: attributes)
}

/// Creates a `<script src="...">` element.
@inlinable public func script(src: consuming String) -> Element<HTMLTag.Script, Empty> {
	script(.src(src))
}

/// Creates a `<script src="..." defer>` element.
@inlinable public func script(defer src: consuming String) -> Element<HTMLTag.Script, Empty> {
	script(.src(src), .defer)
}

/// Creates a `<script src="..." async>` element.
@inlinable public func script(async src: consuming String) -> Element<HTMLTag.Script, Empty> {
	script(.src(src), .async)
}


// MARK: - Demarcating Edits

/// Creates a `<del>` element.
@inlinable public func del<Content: Node>(_ attributes: Attribute<HTMLTag.Del>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Del, Content> {
	.init(name: "del", attributes: attributes, build: build)
}

/// Creates a `<del datetime="...">` element.
@inlinable public func del<Content: Node>(dateTime: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Del, Content> {
	del(.dateTime(dateTime), build: build)
}

/// Creates an `<ins>` element.
@inlinable public func ins<Content: Node>(_ attributes: Attribute<HTMLTag.Ins>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ins, Content> {
	.init(name: "ins", attributes: attributes, build: build)
}

/// Creates an `<ins datetime="...">` element.
@inlinable public func ins<Content: Node>(dateTime: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Ins, Content> {
	ins(.dateTime(dateTime), build: build)
}


// MARK: - Table Content

/// Creates a `<caption>` element.
@inlinable public func caption<Content: Node>(_ attributes: Attribute<HTMLTag.Caption>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Caption, Content> {
	.init(name: "caption", attributes: attributes, build: build)
}

/// Creates a `<colgroup>` element.
@inlinable public func colgroup<Content: Node>(_ attributes: Attribute<HTMLTag.Colgroup>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Colgroup, Content> {
	.init(name: "colgroup", attributes: attributes, build: build)
}

/// Creates a `<colgroup span="...">` element.
@inlinable public func colgroup<Content: Node>(span: consuming Int, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Colgroup, Content> {
	colgroup(.span(span), build: build)
}

/// Creates a `<col>` element.
@inlinable public func col(_ attributes: Attribute<HTMLTag.Col>...) -> VoidElement<HTMLTag.Col> {
	.init(name: "col", attributes: attributes)
}

/// Creates a `<col span="...">` element.
@inlinable public func col(span: consuming Int) -> VoidElement<HTMLTag.Col> {
	col(.span(span))
}

/// Creates a `<table>` element.
@inlinable public func table<Content: Node>(_ attributes: Attribute<HTMLTag.Table>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Table, Content> {
	.init(name: "table", attributes: attributes, build: build)
}

/// Creates a `<thead>` element.
@inlinable public func thead<Content: Node>(_ attributes: Attribute<HTMLTag.Thead>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Thead, Content> {
	.init(name: "thead", attributes: attributes, build: build)
}

/// Creates a `<tbody>` element.
@inlinable public func tbody<Content: Node>(_ attributes: Attribute<HTMLTag.Tbody>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Tbody, Content> {
	.init(name: "tbody", attributes: attributes, build: build)
}

/// Creates a `<tfoot>` element.
@inlinable public func tfoot<Content: Node>(_ attributes: Attribute<HTMLTag.Tfoot>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Tfoot, Content> {
	.init(name: "tfoot", attributes: attributes, build: build)
}

/// Creates a `<td>` element.
@inlinable public func td<Content: Node>(_ attributes: Attribute<HTMLTag.Td>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Td, Content> {
	.init(name: "td", attributes: attributes, build: build)
}

/// Creates a `<td colspan="..." rowspan="...">` element.
@inlinable public func td<Content: Node>(colspan: consuming Int, rowspan: consuming Int = 1, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Td, Content> {
	var attributes: [Attribute<HTMLTag.Td>] = [.colSpan(colspan)]
	if rowspan != 1 { attributes.append(.rowSpan(rowspan)) }
	return .init(name: "td", attributes: attributes, build: build)
}

/// Creates a `<th>` element.
@inlinable public func th<Content: Node>(_ attributes: Attribute<HTMLTag.Th>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Th, Content> {
	.init(name: "th", attributes: attributes, build: build)
}

/// Creates a `<th scope="...">` element.
@inlinable public func th<Content: Node>(scope: consuming Scope, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Th, Content> {
	th(.scope(scope), build: build)
}

/// Creates a `<tr>` element.
@inlinable public func tr<Content: Node>(_ attributes: Attribute<HTMLTag.Tr>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Tr, Content> {
	.init(name: "tr", attributes: attributes, build: build)
}


// MARK: - Forms

/// Creates a `<button>` element.
@inlinable public func button<Content: Node>(_ attributes: Attribute<HTMLTag.Button>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Button, Content> {
	.init(name: "button", attributes: attributes, build: build)
}

/// Creates a `<button type="...">` element.
@inlinable public func button<Content: Node>(type: consuming ButtonType, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Button, Content> {
	button(.type(type), build: build)
}

/// Creates a `<datalist>` element.
@inlinable public func datalist<Content: Node>(_ attributes: Attribute<HTMLTag.Datalist>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Datalist, Content> {
	.init(name: "datalist", attributes: attributes, build: build)
}

/// Creates a `<fieldset>` element.
@inlinable public func fieldset<Content: Node>(_ attributes: Attribute<HTMLTag.Fieldset>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Fieldset, Content> {
	.init(name: "fieldset", attributes: attributes, build: build)
}

/// Creates a `<form>` element.
@inlinable public func form<Content: Node>(_ attributes: Attribute<HTMLTag.Form>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Form, Content> {
	.init(name: "form", attributes: attributes, build: build)
}

/// Creates a `<form action="..." method="...">` element.
@inlinable public func form<Content: Node>(action: consuming String, method: consuming FormMethod, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Form, Content> {
	form(.action(action), .method(method), build: build)
}

/// Creates an `<input>` element.
@inlinable public func input(_ attributes: Attribute<HTMLTag.Input>...) -> VoidElement<HTMLTag.Input> {
	.init(name: "input", attributes: attributes)
}

/// Creates an `<input type="..." name="..." required>` element.
@inlinable public func input(type: consuming InputType, name: consuming String, required: Bool = true) -> VoidElement<HTMLTag.Input> {
	required ? input(.type(type), .name(name), .required) : input(type: type, name: name)
}

/// Creates an `<input type="..." name="..." placeholder="..." required>` element.
@inlinable public func input(type: consuming InputType, name: consuming String, placeholder: consuming String, required: Bool = true) -> VoidElement<HTMLTag.Input> {
	required ? input(.type(type), .name(name), .placeholder(placeholder), .required) : input(.type(type), .name(name), .placeholder(placeholder))
}

/// Creates a `<label>` element.
@inlinable public func label<Content: Node>(_ attributes: Attribute<HTMLTag.Label>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Label, Content> {
	.init(name: "label", attributes: attributes, build: build)
}

/// Creates a `<label for="...">` element.
@inlinable public func label<Content: Node>(`for` id: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Label, Content> {
	label(.for(id), build: build)
}

/// Creates a `<legend>` element.
@inlinable public func legend<Content: Node>(_ attributes: Attribute<HTMLTag.Legend>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Legend, Content> {
	.init(name: "legend", attributes: attributes, build: build)
}

/// Creates a `<meter>` element.
@inlinable public func meter<Content: Node>(_ attributes: Attribute<HTMLTag.Meter>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Meter, Content> {
	.init(name: "meter", attributes: attributes, build: build)
}

/// Creates a `<meter value="..." min="..." max="...">` element.
@inlinable public func meter<Content: Node>(value: consuming String, min: consuming Int, max: consuming Int, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Meter, Content> {
	meter(.value(value), .min(min), .max(max), build: build)
}

/// Creates an `<optgroup>` element.
@inlinable public func optgroup<Content: Node>(_ attributes: Attribute<HTMLTag.Optgroup>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Optgroup, Content> {
	.init(name: "optgroup", attributes: attributes, build: build)
}

/// Creates an `<optgroup label="...">` element.
@inlinable public func optgroup<Content: Node>(label: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Optgroup, Content> {
	optgroup(.label(label), build: build)
}

/// Creates an `<option>` element.
@inlinable public func option<Content: Node>(_ attributes: Attribute<HTMLTag.Option>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Option, Content> {
	.init(name: "option", attributes: attributes, build: build)
}

/// Creates an `<option value="..." selected>` element.
@inlinable public func option<Content: Node>(value: consuming String, selected: Bool = false, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Option, Content> {
	selected ? option(.value(value), .selected, build: build) : option(.value(value), build: build)
}

/// Creates an `<output>` element.
@inlinable public func output<Content: Node>(_ attributes: Attribute<HTMLTag.Output>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Output, Content> {
	.init(name: "output", attributes: attributes, build: build)
}

/// Creates an `<output for="...">` element.
@inlinable public func output<Content: Node>(`for` id: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Output, Content> {
	output(.for(id), build: build)
}

/// Creates a `<progress>` element.
@inlinable public func progress<Content: Node>(_ attributes: Attribute<HTMLTag.Progress>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Progress, Content> {
	.init(name: "progress", attributes: attributes, build: build)
}

/// Creates a `<progress value="..." max="...">` element.
@inlinable public func progress<Content: Node>(value: consuming String, max: consuming Int, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Progress, Content> {
	progress(.value(value), .max(max), build: build)
}

/// Creates a `<select>` element.
@inlinable public func select<Content: Node>(_ attributes: Attribute<HTMLTag.Select>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Select, Content> {
	.init(name: "select", attributes: attributes, build: build)
}

/// Creates a `<select name="...">` element.
@inlinable public func select<Content: Node>(name: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Select, Content> {
	select(.name(name), build: build)
}

/// Creates a `<textarea>` element.
@inlinable public func textarea<Content: Node>(_ attributes: Attribute<HTMLTag.Textarea>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Textarea, Content> {
	.init(name: "textarea", attributes: attributes, build: build)
}

/// Creates a `<textarea name="...">` element.
@inlinable public func textarea<Content: Node>(name: consuming String, @ContentBuilder build: () -> Content) -> Element<HTMLTag.Textarea, Content> {
	textarea(.name(name), build: build)
}


// MARK: - Interactive Elements

/// Creates a `<details>` element.
@inlinable public func details<Content: Node>(_ attributes: Attribute<HTMLTag.Details>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Details, Content> {
	.init(name: "details", attributes: attributes, build: build)
}

/// Creates a `<dialog>` element.
@inlinable public func dialog<Content: Node>(_ attributes: Attribute<HTMLTag.Dialog>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Dialog, Content> {
	.init(name: "dialog", attributes: attributes, build: build)
}

/// Creates a `<summary>` element.
@inlinable public func summary<Content: Node>(_ attributes: Attribute<HTMLTag.Summary>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Summary, Content> {
	.init(name: "summary", attributes: attributes, build: build)
}


// MARK: - Web Components

/// Create a `<slot>` element.
@inlinable public func slot<Content: Node>(_ attributes: Attribute<HTMLTag.Slot>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Slot, Content> {
	.init(name: "slot", attributes: attributes, build: build)
}

/// Creates a `<template>` element.
@inlinable public func template<Content: Node>(_ attributes: Attribute<HTMLTag.Template>..., @ContentBuilder build: () -> Content) -> Element<HTMLTag.Template, Content> {
	.init(name: "template", attributes: attributes, build: build)
}
