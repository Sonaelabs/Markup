//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	/// Specifies the kind of text track.
	public enum TrackKind: String, Sendable {

		/// The track defines subtitles, used to display subtitles in a video.
		case subtitles

		/// The track defines translation of dialogue and sound effects (suitable for deaf users).
		case captions

		/// The track defines a textual description of the video content (suitable for blind users).
		case descriptions

		/// The track defines chapter titles (suitable for navigating the media resource).
		case chapters

		/// The track defines content used by scripts. Not visible for the user.
		case metadata
	}
}
