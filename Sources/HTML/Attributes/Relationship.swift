//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	/// Specifies `rel` keywords valid on `<link>` elements.
	public enum LinkRelationship: String, Sendable {
		case stylesheet
		case icon
		case canonical
		case manifest
		case preconnect
		case dnsPrefetch = "dns-prefetch"
		case preload
		case modulepreload
		case pingback
		case alternate
		case author
		case prefetch
		case help
		case next
		case prev
		case search
		case license
		case privacyPolicy = "privacy-policy"
		case termsOfService = "terms-of-service"
	}
}

// MARK: -

extension HTML {

	/// Specifies `rel` keywords valid on `<a>` and `<area>` elements.
	public enum HyperlinkRelationship: String, Sendable {
		case alternate
		case author
		case bookmark
		case tag
		case external
		case nofollow
		case noopener
		case opener
		case noreferrer
		case prefetch
		case help
		case next
		case prev
		case search
		case license
		case privacyPolicy = "privacy-policy"
		case termsOfService = "terms-of-service"
	}
}

// MARK: -

extension HTML {

	/// Specifies `rel` keywords valid on `<form>` elements.
	public enum FormRelationship: String, Sendable {
		case external
		case nofollow
		case noopener
		case opener
		case help
		case next
		case prev
		case search
		case license
	}
}
