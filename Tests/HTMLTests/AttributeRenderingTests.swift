//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import Markup
import HTML

struct AttributeRenderingTests {

	@Test func renderGlobalAttributes() async throws {
		expect(p(.accessKey("f")) {}, #"<p accesskey="f"></p>"#)

		expect(p(.autofocus) {}, #"<p autofocus></p>"#)

		expect(p(.class("foo", "bar")) {}, #"<p class="foo bar"></p>"#)

		expect(p(.contentEditable(true)) {}, #"<p contenteditable="true"></p>"#)
		expect(p(.contentEditable(false)) {}, #"<p contenteditable="false"></p>"#)
		expect(p(.contentEditable(.plainTextOnly)) {}, #"<p contenteditable="plaintext-only"></p>"#)

		expect(p(.data("foo", value: "bar")) {}, #"<p data-foo="bar"></p>"#)

		expect(p(.dir(.leftToRight)) {}, #"<p dir="ltr"></p>"#)
		expect(p(.dir(.rightToLeft)) {}, #"<p dir="rtl"></p>"#)
		expect(p(.dir(.automatic)) {}, #"<p dir="auto"></p>"#)

		expect(p(.draggable(true)) {}, #"<p draggable="true"></p>"#)
		expect(p(.draggable(false)) {}, #"<p draggable="false"></p>"#)

		expect(p(.enterKeyHint(.enter)) {}, #"<p enterkeyhint="enter"></p>"#)
		expect(p(.enterKeyHint(.done)) {}, #"<p enterkeyhint="done"></p>"#)
		expect(p(.enterKeyHint(.go)) {}, #"<p enterkeyhint="go"></p>"#)
		expect(p(.enterKeyHint(.next)) {}, #"<p enterkeyhint="next"></p>"#)
		expect(p(.enterKeyHint(.previous)) {}, #"<p enterkeyhint="previous"></p>"#)
		expect(p(.enterKeyHint(.search)) {}, #"<p enterkeyhint="search"></p>"#)
		expect(p(.enterKeyHint(.send)) {}, #"<p enterkeyhint="send"></p>"#)

		expect(p(.hidden) {}, #"<p hidden></p>"#)

		expect(p(.id("foo")) {}, #"<p id="foo"></p>"#)

		expect(p(.inert) {}, #"<p inert></p>"#)

		expect(p(.inputMode(.none)) {}, #"<p inputmode="none"></p>"#)
		expect(p(.inputMode(.text)) {}, #"<p inputmode="text"></p>"#)
		expect(p(.inputMode(.decimal)) {}, #"<p inputmode="decimal"></p>"#)
		expect(p(.inputMode(.numeric)) {}, #"<p inputmode="numeric"></p>"#)
		expect(p(.inputMode(.tel)) {}, #"<p inputmode="tel"></p>"#)
		expect(p(.inputMode(.search)) {}, #"<p inputmode="search"></p>"#)
		expect(p(.inputMode(.email)) {}, #"<p inputmode="email"></p>"#)
		expect(p(.inputMode(.url)) {}, #"<p inputmode="url"></p>"#)

		expect(p(.lang(.germanDE)) {}, #"<p lang="de-DE"></p>"#)
		expect(p(.lang(.englishAU)) {}, #"<p lang="en-AU"></p>"#)
		expect(p(.lang(.japanese)) {}, #"<p lang="ja"></p>"#)

		expect(p(.popover(.auto)) {}, #"<p popover="auto"></p>"#)
		expect(p(.popover(.hint)) {}, #"<p popover="hint"></p>"#)
		expect(p(.popover(.manual)) {}, #"<p popover="manual"></p>"#)

		expect(p(.popover) {}, #"<p popover></p>"#)

		expect(p(.spellcheck(true)) {}, #"<p spellcheck="true"></p>"#)
		expect(p(.spellcheck(false)) {}, #"<p spellcheck="false"></p>"#)

		expect(p(.tabIndex(13)) {}, #"<p tabindex="13"></p>"#)

		expect(p(.title("foo")) {}, #"<p title="foo"></p>"#)

		expect(p(.translate(true)) {}, #"<p translate="true"></p>"#)
		expect(p(.translate(false)) {}, #"<p translate="false"></p>"#)
	}

	@Test func renderEscapedAttributes() async throws {
		expect(p(.title(#"foo"<bar>&baz"#)) {}, #"<p title="foo&quot;<bar>&amp;baz"></p>"#)
	}

	@Test func renderMultipleAttributes() async throws {
		expect(p(.id("foo"), .title("bar"), .hidden) {}, #"<p id="foo" title="bar" hidden></p>"#)
	}

	@Test func renderConvenientAttributesBase() {
		expect(base.href("/test"), #"<base href="/test">"#)
	}

	@Test func renderConvenientAttributesLink() async throws {
		expect(link.stylesheet("/test.css"), #"<link rel="stylesheet" href="/test.css">"#)
		expect(link.icon("/test.css"), #"<link rel="icon" href="/test.css">"#)
		expect(link.preconnect("/test.css"), #"<link rel="preconnect" href="/test.css" crossorigin>"#)
		expect(link.canonical("/test.css"), #"<link rel="canonical" href="/test.css">"#)
		expect(link.manifest("/test.css"), #"<link rel="manifest" href="/test.css">"#)
		expect(link.dnsPrefetch("/test.css"), #"<link rel="dns-prefetch" href="/test.css">"#)
	}

	@Test func renderConvenientAttributesMeta() {
		expect(meta.charset(), #"<meta charset="UTF-8">"#)
		expect(meta.charset(.utf8), #"<meta charset="UTF-8">"#)
		expect(meta.author("foo"), #"<meta name="author" content="foo">"#)
		expect(meta.description("foo"), #"<meta name="description" content="foo">"#)
		expect(meta.keywords("foo bar baz"), #"<meta name="keywords" content="foo bar baz">"#)
		expect(meta.viewport("width=device-width, initial-scale=1"), #"<meta name="viewport" content="width=device-width, initial-scale=1">"#)
	}

	@Test func renderConvenientAttributesScript() {
		expect(script.load("/test.js"), #"<script src="/test.js"></script>"#)
		expect(script.defer("/test.js"), #"<script defer src="/test.js"></script>"#)
		expect(script.async("/test.js"), #"<script async src="/test.js"></script>"#)
	}

	private func expect(_ html: some HTML & SyncNode , _ result: String, sourceLocation: SourceLocation = #_sourceLocation) {
		#expect(html.write() == result, sourceLocation: sourceLocation)
	}
}
