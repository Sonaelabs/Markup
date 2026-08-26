//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing a sync strategy.
	public enum SyncStrategy: String, Sendable {

		/// Specifies to ignore this request if an existing request is in flight.
		case drop

		/// Specifies to ignore this request if an existing request is in flight, and, if
		/// that is not the case, abort this request if another request occurs while it is
		/// still in flight.
		case abort

		/// Specifies to abort the current request, if any, and replace it with this request.
		case replace

		/// Specifies to queue the first request to show up while a request is in flight
		case queueFirst = "queue first"

		/// Specifies to queue the last request to show up while a request is in flight.
		case queueLast = "queue last"

		/// Specifies to queue all requests that show up while a request is in flight.
		case queueAll = "queue all"
	}
}
