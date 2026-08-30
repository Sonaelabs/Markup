//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Markup

public struct Document<Content: HTML.Node>: Component, Sendable {

	public let root: HTML.Element<HTML, Content>

	public init(@ContentBuilder build: () -> HTML.Element<HTML, Content>) {
		self.root = build()
	}

	public var content: some Node {
		Raw("<!DOCTYPE html>")
		root
	}
}
