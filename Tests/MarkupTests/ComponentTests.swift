//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import Markup

struct ComponentTests {

	@Test func renderSingleComponent() async throws {
		var recorder = RecordingRenderer()

		let test = FooItem(name: "foo")
		let compound = Compound(test)
		compound.render(using: &recorder)

		#expect(recorder.events == [
			.comment("Hello"),
			.text("foo"),
		])
	}

	@Test func renderNestedComponents() async throws {
		var recorder = RecordingRenderer()

		let test = FooList(names: ["foo", "bar", "baz"])
		let compound = Compound(test)
		compound.render(using: &recorder)

		#expect(recorder.events == [
			.comment("Hello"),
			.text("foo"),
			.comment("Hello"),
			.text("bar"),
			.comment("Hello"),
			.text("baz"),
		])
	}
}

// MARK: -

struct FooList: Component {
	let names: [String]

	var content: some Node {
		ForEach(names) { name in
			FooItem(name: name)
		}
	}
}

struct FooItem: Component {
	let name: String

	var content: some Node {
		Comment("Hello")
		Text(name)
	}
}
