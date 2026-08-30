//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

@testable import Markup

enum TestError: Error, Equatable {
	case asyncContent
	case asyncForEach
}

struct RecordingRenderer: Renderer {

	enum Event: Equatable {
		case comment(String)
		case raw(String)
		case text(String)
		case start(String)
		case end(String)
		case flush(force: Bool)
	}

	var events: [Event] = []

	mutating func append(comment: consuming StaticString) {
		events.append(.comment("\(comment)"))
	}

	mutating func append(raw: consuming String) {
		events.append(.raw(raw))
	}

	mutating func append(text: consuming String) {
		events.append(.text(text))
	}

	mutating func append<Tag: TagDefinition>(start tag: Tag.Type, attributes: consuming [Attribute<Tag>], terminator: StaticString?) {
		events.append(.start(tag.name.description))
	}

	mutating func append<Tag: TagDefinition>(end tag: Tag.Type) {
		events.append(.end(tag.name.description))
	}
}
