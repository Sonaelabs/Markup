//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension link {

	/// Creates a `<link rel="stylesheet" href="...">` element.
	@inlinable public static func stylesheet(_ href: consuming String) -> Self {
		.init(.rel(.stylesheet), .href(href))
	}

	/// Creates a `<link rel="icon" href="...">` element.
	@inlinable public static func icon(_ href: consuming String) -> Self {
		.init(.rel(.icon), .href(href))
	}

	/// Creates a `<link rel="preconnect" href="..." crossorigin>` element.
	@inlinable public static func preconnect(_ href: consuming String) -> Self {
		.init(.rel(.preconnect), .href(href), .crossOrigin)
	}

	/// Creates a `<link rel="canonical" href="...">` element.
	@inlinable public static func canonical(_ href: consuming String) -> Self {
		.init(.rel(.canonical), .href(href))
	}

	/// Creates a `<link rel="preload" href="">` element.
	@inlinable public static func manifest(_ href: consuming String) -> Self {
		.init(.rel(.manifest), .href(href))
	}

	/// Creates a `<link rel="dns-prefetch" href="...">` element.
	@inlinable public static func dnsPrefetch(_ href: consuming String) -> Self {
		.init(.rel(.dnsPrefetch), .href(href))
	}
}
