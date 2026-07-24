//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import HTML
import HTMX

struct HTMXTests {

	@Test func `hx-get`() {
		expect(.hx.get("/"),     "hx-get", "/")
		expect(.hx.get("/test"), "hx-get", "/test")
	}

	@Test func `hx-post`() {
		expect(.hx.post("/"),     "hx-post", "/")
		expect(.hx.post("/test"), "hx-post", "/test")
	}

	@Test func `hx-put`() {
		expect(.hx.put("/"),     "hx-put", "/")
		expect(.hx.put("/test"), "hx-put", "/test")
	}

	@Test func `hx-patch`() {
		expect(.hx.patch("/"),     "hx-patch", "/")
		expect(.hx.patch("/test"), "hx-patch", "/test")
	}

	@Test func `hx-delete`() {
		expect(.hx.delete("/"),     "hx-delete", "/")
		expect(.hx.delete("/test"), "hx-delete", "/test")
	}

	@Test func `hx-trigger`() {
		expect(.hx.trigger(.load),                            "hx-trigger", "load")
		expect(.hx.trigger(.load, .click.delay(.seconds(1))), "hx-trigger", "load, click delay:1s")

		expect(.hx.trigger(.revealed), "hx-trigger", "revealed")

		expect(.hx.trigger(.intersect),                            "hx-trigger", "intersect")
		expect(.hx.trigger(.intersect.once()),                     "hx-trigger", "intersect once")
		expect(.hx.trigger(.intersect(root: "#scroll-container")), "hx-trigger", "intersect root:#scroll-container")
		expect(.hx.trigger(.intersect(threshold: 0.5)),            "hx-trigger", "intersect threshold:0.5")

		expect(.hx.trigger(.every(.seconds(1))),        "hx-trigger", "every 1s")
		expect(.hx.trigger(.every(.milliseconds(200))), "hx-trigger", "every 200ms")

		expect(.hx.trigger(.click),      "hx-trigger", "click")
		expect(.hx.trigger(.keyUp),      "hx-trigger", "keyup")
		expect(.hx.trigger(.submit),     "hx-trigger", "submit")
		expect(.hx.trigger(.change),     "hx-trigger", "change")
		expect(.hx.trigger(.mouseEnter), "hx-trigger", "mouseenter")

		expect(.hx.trigger(.click.once()),                       "hx-trigger", "click once")
		expect(.hx.trigger(.click.changed()),                    "hx-trigger", "click changed")
		expect(.hx.trigger(.click.delay(.seconds(2))),           "hx-trigger", "click delay:2s")
		expect(.hx.trigger(.click.throttle(.milliseconds(300))), "hx-trigger", "click throttle:300ms")
		expect(.hx.trigger(.click.consume()),                    "hx-trigger", "click consume")

		expect(.hx.trigger(.click.from("body")),             "hx-trigger", "click from:body")
		expect(.hx.trigger(.click.from(.document)),          "hx-trigger", "click from:document")
		expect(.hx.trigger(.click.from(.window)),            "hx-trigger", "click from:window")
		expect(.hx.trigger(.click.from("#foo")),             "hx-trigger", "click from:#foo")
		expect(.hx.trigger(.click.from(.closest(".foo"))),   "hx-trigger", "click from:closest .foo")
		expect(.hx.trigger(.click.from(.find(".child"))),    "hx-trigger", "click from:find .child")
		expect(.hx.trigger(.click.from(.next("input"))),     "hx-trigger", "click from:next input")
		expect(.hx.trigger(.click.from(.previous("input"))), "hx-trigger", "click from:previous input")
		expect(.hx.trigger(.click.from(.next)),              "hx-trigger", "click from:next")
		expect(.hx.trigger(.click.from(.previous)),          "hx-trigger", "click from:previous")

		expect(.hx.trigger(.click.target("#foo")), "hx-trigger", "click target:#foo")
		expect(.hx.trigger(.click.target("#foo")), "hx-trigger", "click target:#foo")

		expect(.hx.trigger("my-custom-event"), "hx-trigger", "my-custom-event")
	}

	@Test func `hx-swap`() {
		expect(.hx.swap(.innerHTML),   "hx-swap", "innerHTML")
		expect(.hx.swap(.outerHTML),   "hx-swap", "outerHTML")
		expect(.hx.swap(.textContent), "hx-swap", "textContent")
		expect(.hx.swap(.beforeBegin), "hx-swap", "beforebegin")
		expect(.hx.swap(.afterBegin),  "hx-swap", "afterbegin")
		expect(.hx.swap(.beforeEnd),   "hx-swap", "beforeend")
		expect(.hx.swap(.afterEnd),    "hx-swap", "afterend")
		expect(.hx.swap(.delete),      "hx-swap", "delete")
		expect(.hx.swap(.none),        "hx-swap", "none")

		expect(.hx.swap(.innerHTML.swap(.seconds(1))),          "hx-swap", "innerHTML swap:1s")
		expect(.hx.swap(.innerHTML.swap(.milliseconds(200))),   "hx-swap", "innerHTML swap:200ms")
		expect(.hx.swap(.outerHTML.settle(.milliseconds(300))), "hx-swap", "outerHTML settle:300ms")

		expect(.hx.swap(.beforeEnd.scroll(.top)),                    "hx-swap", "beforeend scroll:top")
		expect(.hx.swap(.beforeEnd.scroll(.bottom)),                 "hx-swap", "beforeend scroll:bottom")
		expect(.hx.swap(.innerHTML.scroll(.top, "window")),          "hx-swap", "innerHTML scroll:window:top")
		expect(.hx.swap(.innerHTML.scroll(.bottom, "#container")),   "hx-swap", "innerHTML scroll:#container:bottom")
		expect(.hx.swap(.innerHTML.scroll(.top, .closest(".list"))), "hx-swap", "innerHTML scroll:closest .list:top")

		expect(.hx.swap(.innerHTML.show(.top)),               "hx-swap", "innerHTML show:top")
		expect(.hx.swap(.innerHTML.show(.bottom)),            "hx-swap", "innerHTML show:bottom")
		expect(.hx.swap(.innerHTML.show(.top, "window")),     "hx-swap", "innerHTML show:window:top")
		expect(.hx.swap(.innerHTML.show(.bottom, "#result")), "hx-swap", "innerHTML show:#result:bottom")
		expect(.hx.swap(.outerHTML.showNone()),               "hx-swap", "outerHTML show:none")

		expect(.hx.swap(.outerHTML.focusScroll(true)),  "hx-swap", "outerHTML focus-scroll:true")
		expect(.hx.swap(.outerHTML.focusScroll(false)), "hx-swap", "outerHTML focus-scroll:false")

		expect(.hx.swap(.outerHTML.ignoreTitle()),      "hx-swap", "outerHTML ignoreTitle:true")
		expect(.hx.swap(.outerHTML.ignoreTitle(true)),  "hx-swap", "outerHTML ignoreTitle:true")
		expect(.hx.swap(.outerHTML.ignoreTitle(false)), "hx-swap", "outerHTML ignoreTitle:false")

		expect(.hx.swap(.outerHTML.transition()),      "hx-swap", "outerHTML transition:true")
		expect(.hx.swap(.outerHTML.transition(true)),  "hx-swap", "outerHTML transition:true")
		expect(.hx.swap(.outerHTML.transition(false)), "hx-swap", "outerHTML transition:false")

		expect(.hx.swap(.innerHTML.transition(true).swap(.milliseconds(200))),                        "hx-swap", "innerHTML transition:true swap:200ms")
		expect(.hx.swap(.innerHTML.swap(.milliseconds(200)).settle(.milliseconds(100)).scroll(.top)), "hx-swap", "innerHTML swap:200ms settle:100ms scroll:top")
		expect(.hx.swap(.innerHTML.scroll(.top).settle(.milliseconds(100)).swap(.milliseconds(200))), "hx-swap", "innerHTML scroll:top settle:100ms swap:200ms")
		expect(.hx.swap(.outerHTML.transition(true).ignoreTitle().focusScroll(true)),                 "hx-swap", "outerHTML transition:true ignoreTitle:true focus-scroll:true")
	}

	@Test func `hx-target`() {
		expect(.hx.target(.this), "hx-target", "this")

		expect(.hx.target("#result"),              "hx-target", "#result")
		expect(.hx.target(".result"),              "hx-target", ".result")
		expect(.hx.target(".result.active"),       "hx-target", ".result.active")
		expect(.hx.target("[data-target='true']"), "hx-target", "[data-target='true']")
		expect(.hx.target("div.result"),           "hx-target", "div.result")
		expect(.hx.target("#result > .inner"),     "hx-target", "#result > .inner")
		expect(.hx.target("ul li:first-child"),    "hx-target", "ul li:first-child")

		expect(.hx.target(.closest("tr")),         "hx-target", "closest tr")
		expect(.hx.target(.closest(".row")),       "hx-target", "closest .row")
		expect(.hx.target(.closest("#container")), "hx-target", "closest #container")
		expect(.hx.target(.closest("[data-row]")), "hx-target", "closest [data-row]")
		expect(.hx.target(.closest("form")),       "hx-target", "closest form")

		expect(.hx.target(.find(".inner")),             "hx-target", "find .inner")
		expect(.hx.target(.find("span")),               "hx-target", "find span")
		expect(.hx.target(.find("[data-value]")),       "hx-target", "find [data-value]")
		expect(.hx.target(.find("input[type='text']")), "hx-target", "find input[type='text']")

		expect(.hx.target(.next),                        "hx-target", "next")
		expect(.hx.target(.next(#".item"#)),             "hx-target", "next .item")
		expect(.hx.target(.next(#"tr"#)),                "hx-target", "next tr")
		expect(.hx.target(.next(#"[data-active]"#)),     "hx-target", "next [data-active]")

		expect(.hx.target(.previous),                    "hx-target", "previous")
		expect(.hx.target(.previous(#".item"#)),         "hx-target", "previous .item")
		expect(.hx.target(.previous(#"tr"#)),            "hx-target", "previous tr")
		expect(.hx.target(.previous(#"[data-active]"#)), "hx-target", "previous [data-active]")
	}

	@Test func `hx-select`() {
		expect(.hx.select("#info-details"),        "hx-select", "#info-details")
		expect(.hx.select(".content"),             "hx-select", ".content")
		expect(.hx.select("[data-role='detail']"), "hx-select", "[data-role='detail']")
		expect(.hx.select("form input"),           "hx-select", "form input")
		expect(.hx.select("div.item"),             "hx-select", "div.item")
		expect(.hx.select("tr:nth-child(2)"),      "hx-select", "tr:nth-child(2)")
	}

	@Test func `hx-selectOOB`() {
		expect(.hx.selectOOB("foo"), "hx-select-oob", "foo")
	}

	@Test func `hx-swapOOB`() {
		expect(.hx.swapOOB("foo"), "hx-swap-oob", "foo")
	}

	@Test func `hx-confirm`() {
		expect(.hx.confirm("Hello World"), "hx-confirm", "Hello World")
	}

	@Test func `hx-vals`() {
		expect(.hx.vals(["foo": "bar"]),              "hx-vals", #"{"foo": "bar"}"#)
		expect(.hx.vals(["foo": "bar", "baz": "13"]), "hx-vals", #"{"foo": "bar", "baz": "13"}"#)
	}

	@Test func `hx-include`() {
		expect(.hx.include(.this),             "hx-include", "this")
		expect(.hx.include(.closest("#foo")),  "hx-include", "closest #foo")
		expect(.hx.include(.find("#foo")),     "hx-include", "find #foo")
		expect(.hx.include(.next("#foo")),     "hx-include", "next #foo")
		expect(.hx.include(.previous("#foo")), "hx-include", "previous #foo")
		expect(.hx.include(.name("foo")),      "hx-include", "[name='foo']")

		expect(.hx.include(.inherit, .name("foo")), "hx-include", "inherit, [name='foo']")
	}

	@Test func `hx-headers`() {
		expect(.hx.headers(#"{"X-CSRF-TOKEN": "foo"}"#),   "hx-headers", #"{"X-CSRF-TOKEN": "foo"}"#)
	}

	@Test func `hx-encoding`() {
		expect(.hx.encoding(.application), "hx-encoding", "application/x-www-form-urlencoded")
		expect(.hx.encoding(.multipart),   "hx-encoding", "multipart/form-data")
	}

	@Test func `hx-push-url`() {
		expect(.hx.pushURL(true),    "hx-push-url", "true")
		expect(.hx.pushURL("/"),     "hx-push-url", "/")
		expect(.hx.pushURL("/test"), "hx-push-url", "/test")
	}

	@Test func `hx-replace-url`() {
		expect(.hx.replaceURL(true),    "hx-replace-url", "true")
		expect(.hx.replaceURL("/"),     "hx-replace-url", "/")
		expect(.hx.replaceURL("/test"), "hx-replace-url", "/test")
	}

	@Test func `hx-history`() {
		expect(.hx.history(true),  "hx-history", "true")
		expect(.hx.history(false), "hx-history", "false")
	}

	@Test func `hx-history-elt`() {
		expect(.hx.historyElt(), "hx-history-elt", nil)
	}

	@Test func `hx-ext`() {
		expect(.hx.ext("foo"), "hx-ext", "foo")
		expect(.hx.ext(.sse),  "hx-ext", "sse")
		expect(.hx.ext(.ws),   "hx-ext", "ws")

		expect(.hx.ext(.sse, .ws), "hx-ext", "sse, ws")

		expect(.hx.ext(.ignore(.ws)),       "hx-ext", "ignore:ws")
		expect(.hx.ext(.sse, .ignore(.ws)), "hx-ext", "sse, ignore:ws")
	}

	@Test func `hx-ignore`() {
		expect(.hx.ignore(), "hx-disable", nil)
	}

	@Test func `hx-boost`() {
		expect(.hx.boost(true),  "hx-boost", "true")
		expect(.hx.boost(false), "hx-boost", "false")
	}

	@Test func `hx-indicator`() {
		expect(.hx.indicator(.inherit),         "hx-indicator", "inherit")
		expect(.hx.indicator(.closest(".foo")), "hx-indicator", "closest .foo")
		expect(.hx.indicator(.inherit, "#ind"), "hx-indicator", "inherit, #ind")
	}

	@Test func `hx-sync`() {
		expect(.hx.sync(.this), 		           "hx-sync", "this")
		expect(.hx.sync(.this, .replace),          "hx-sync", "this:replace")
		expect(.hx.sync(.closest("form")),         "hx-sync", "closest form")
		expect(.hx.sync(.closest("form"), .abort), "hx-sync", "closest form:abort")
	}

	@Test func `hx-validate`() {
		expect(.hx.validate(true),  "hx-validate", "true")
		expect(.hx.validate(false), "hx-validate", "false")
	}

	@Test func `hx-disable`() {
		expect(.hx.disable(.this), "hx-disabled-elt", "this")
//		expect(.hx.disable(.inherit), "hx-disabled-elt", "inherit")
//		expect(.hx.disable(.inherit, #foo), "hx-disabled-elt", "inherit, #foo")
		expect(.hx.disable(.find("button")), "hx-disabled-elt", "find button")
		expect(.hx.disable(.find("button"), .next("input[type='text']")), "hx-disabled-elt", "find button, next input[type='text']")
	}

	@Test func `hx-preserve`() {
		expect(.hx.preserve(), "hx-preserve", nil)
	}

	@Test func `hx-request`() {
		// TODO: extend test coverage
		expect(.hx.request("{}"), "hx-request", "{}")
	}

	@Test func `hx-disinherit`() {
		expect(.hx.disinherit("foo"),        "hx-disinherit", "foo")
		expect(.hx.disinherit("foo", "bar"), "hx-disinherit", "foo bar")
	}

	@Test func `hx-inherit`() {
		expect(.hx.inherit("foo"),        "hx-inherit", "foo")
		expect(.hx.inherit("foo", "bar"), "hx-inherit", "foo bar")
	}
}

// MARK: - Server Sent Events

extension HTMXTests {

	@Test func `sse-connect`() {
		expect(.sse.connect("/"),     "sse-connect", "/")
		expect(.sse.connect("/test"), "sse-connect", "/test")
	}

	@Test func `sse-swap`() {
		expect(.sse.swap("foo"),               "sse-swap", "foo")
		expect(.sse.swap("foo", "bar", "baz"), "sse-swap", "foo, bar, baz")
	}

	@Test func `sse-close`() {
		expect(.sse.close("foo"), "sse-close", "foo")
	}
}

// MARK: - Web Sockets

extension HTMXTests {

	@Test func `ws-connect`() {
		expect(.ws.connect("/"),     "ws-connect", "/")
		expect(.ws.connect("/test"), "ws-connect", "/test")
	}

	@Test func `ws-send`() {
		expect(.ws.send(), "ws-send", nil)
	}
}

// MARK: -

extension HTMXTests {

	private func expect(_ attribute: Attribute<HTMLTag.Div>, _ name: String, _ value: String?, sourceLocation: SourceLocation = #_sourceLocation) {
		#expect(attribute.name == name, sourceLocation: sourceLocation)
		#expect(attribute.value == value, sourceLocation: sourceLocation)
	}
}
