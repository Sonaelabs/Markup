//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension base {

	/// Creates a `<base href="...">` element.
	@inlinable public static func href(_ url: consuming String) -> Self {
		.init(.href(url))
	}
}
