//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension script {

	/// Creates a `<script src="...">` element.
	@inlinable public static func load(_ src: consuming String) -> Self {
		.init(.src(src))
	}

	/// Creates a `<script src="..." defer>` element.
	@inlinable public static func `defer`(_ src: consuming String) -> Self {
		.init(.defer, .src(src))
	}

	/// Creates a `<script src="..." async>` element.
	@inlinable public static func async(_ src: consuming String) -> Self {
		.init(.async, .src(src))
	}
}
