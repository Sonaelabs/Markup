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

		try await compound.stream(using: &recorder)

		#expect(recorder.events == [
			.comment("Hello"),
			.text("foo"),
		])
	}

	@Test func renderNestedComponents() async throws {
		var recorder = RecordingRenderer()

		let test = FooList(names: ["foo", "bar", "baz"])
		let compound = Compound(test)

		try await compound.stream(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.comment("Hello"),
			.text("foo"),
			.flush(force: false),
			.comment("Hello"),
			.text("bar"),
			.flush(force: false),
			.comment("Hello"),
			.text("baz"),
			.flush(force: false),
			.end("foo"),
		])
	}
}

// MARK: -

struct FooList: Component {
	let names: [String]

	var content: some SyncNode {
		foo {
			ForEach(names) { name in
				FooItem(name: name)
			}
		}
	}
}

struct FooItem: Component {
	let name: String

	var content: some SyncNode {
		Comment("Hello")
		Text(name)
	}
}
