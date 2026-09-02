//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing an event trigger.
	public struct Trigger: RawRepresentable, Sendable {

		public var rawValue: String

		/// Creates an instance using a string.
		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension HTMX.Trigger {

	/// Creates a `load` event trigger.
	@inlinable public static var load: Self { "load" }

	/// Creates a `revealed` event trigger.
	@inlinable public static var revealed: Self { "revealed" }

	/// Creates a `intersect` event trigger.
	@inlinable public static var intersect: Self { "intersect" }

	/// Creates a `intersect root:` event trigger.
	@inlinable public static func intersect(root selector: consuming String) -> Self {
		.intersect.appending("root", value: selector)
	}

	/// Creates a `intersect rootMargin:` event trigger.
	@inlinable public static func intersect(rootMargin selector: consuming String) -> Self {
		.intersect.appending("rootMargin", value: selector)
	}

	/// Creates a `intersect threshold:` event trigger.
	@inlinable public static func intersect(threshold: consuming Double) -> Self {
		.intersect.appending("threshold", value: .init(threshold))
	}
}

// MARK: -

extension HTMX.Trigger {
	@inlinable public static var abort: Self { "abort" }
	@inlinable public static var error: Self { "error" }

	@inlinable public static var command: Self { "command" }

	@inlinable public static var beforeMatch: Self { "beforematch" }
	@inlinable public static var securityPolicyViolation: Self { "securitypolicyviolation" }

	@inlinable public static var resize: Self { "resize" }

	@inlinable public static var contextLost: Self { "contextlost" }
	@inlinable public static var contextRestored: Self { "contextrestored" }

	@inlinable public static var formData: Self { "formdata" }

	@inlinable public static var slotChange: Self { "slotchange" }
	@inlinable public static var cueChange: Self { "cuechange" }
}

// MARK: - Animation Events

extension HTMX.Trigger {
	@inlinable public static var animationStart: Self { "animationstart" }
	@inlinable public static var animationEnd: Self { "animationend" }
	@inlinable public static var animationIteration: Self { "animationiteration" }
	@inlinable public static var animationCancel: Self { "animationcancel" }
	@inlinable public static var transitionStart: Self { "transitionstart" }
	@inlinable public static var transitionEnd: Self { "transitionend" }
	@inlinable public static var transitionCancel: Self { "transitioncancel" }
	@inlinable public static var transitionRun: Self { "transitionrun" }
}

// MARK: - Clipboard Events

extension HTMX.Trigger {
	@inlinable public static var cut: Self { "cut" }
	@inlinable public static var copy: Self { "copy" }
	@inlinable public static var paste: Self { "paste" }
}

// MARK: - Dialog Events

extension HTMX.Trigger {
	@inlinable public static var beforeToggle: Self { "beforetoggle" }
	@inlinable public static var cancel: Self { "cancel" }
	@inlinable public static var close: Self { "close" }
	@inlinable public static var toggle: Self { "toggle" }
}

// MARK: - Focus Events

extension HTMX.Trigger {
	@inlinable public static var blur: Self { "blur" }
	@inlinable public static var focus: Self { "focus" }
	@inlinable public static var focusIn: Self { "focusin" }
	@inlinable public static var focusOut: Self { "focusout" }
}

// MARK: - Form Events

extension HTMX.Trigger {
	@inlinable public static var change: Self { "change" }
	@inlinable public static var input: Self { "input" }
	@inlinable public static var invalid: Self { "invalid" }
	@inlinable public static var reset: Self { "reset" }
	@inlinable public static var select: Self { "select" }
	@inlinable public static var submit: Self { "submit" }
	@inlinable public static var beforeInput: Self { "beforeinput" }
}

// MARK: - Fullsreen Events

extension HTMX.Trigger {
	@inlinable public static var fullscreenChange: Self { "fullscreenchange" }
	@inlinable public static var fullscreenError: Self { "fullscreenerror" }
}

// MARK: - Interactive Events

extension HTMX.Trigger {
	@inlinable public static var drag: Self { "drag" }
	@inlinable public static var dragStart: Self { "dragstart" }
	@inlinable public static var dragEnd: Self { "dragend" }
	@inlinable public static var dragEnter: Self { "dragenter" }
	@inlinable public static var dragLeave: Self { "dragleave" }
	@inlinable public static var dragOver: Self { "dragover" }
	@inlinable public static var drop: Self { "drop" }
}

// MARK: - Keyboard Events

extension HTMX.Trigger {
	@inlinable public static var keyDown: Self { "keydown" }
	@inlinable public static var keyUp: Self { "keyup" }
}

// MARK: - Media Events

extension HTMX.Trigger {
	@inlinable public static var canPlay: Self { "canplay" }
	@inlinable public static var canPlayThrough: Self { "canplaythrough" }
	@inlinable public static var durationChange: Self { "durationchange" }
	@inlinable public static var emptied: Self { "emptied" }
	@inlinable public static var ended: Self { "ended" }
	@inlinable public static var loadedData: Self { "loadeddata" }
	@inlinable public static var loadedMetadata: Self { "loadedmetadata" }
	@inlinable public static var loadStart: Self { "loadstart" }
	@inlinable public static var pause: Self { "pause" }
	@inlinable public static var play: Self { "play" }
	@inlinable public static var playing: Self { "playing" }
	@inlinable public static var progress: Self { "progress" }
	@inlinable public static var rateChange: Self { "ratechange" }
	@inlinable public static var seeked: Self { "seeked" }
	@inlinable public static var seeking: Self { "seeking" }
	@inlinable public static var stalled: Self { "stalled" }
	@inlinable public static var suspend: Self { "suspend" }
	@inlinable public static var timeUpdate: Self { "timeupdate" }
	@inlinable public static var volumeChange: Self { "volumechange" }
	@inlinable public static var waiting: Self { "waiting" }
}

// MARK: - Mouse Events

extension HTMX.Trigger {
	@inlinable public static var click: Self { "click" }
	@inlinable public static var dblClick: Self { "dblclick" }
	@inlinable public static var auxClick: Self { "auxclick" }
	@inlinable public static var mouseDown: Self { "mousedown" }
	@inlinable public static var mouseUp: Self { "mouseup" }
	@inlinable public static var mouseMove: Self { "mousemove" }
	@inlinable public static var mouseOver: Self { "mouseover" }
	@inlinable public static var mouseOut: Self { "mouseout" }
	@inlinable public static var mouseEnter: Self { "mouseenter" }
	@inlinable public static var mouseLeave: Self { "mouseleave" }
	@inlinable public static var contextMenu: Self { "contextmenu" }
	@inlinable public static var wheel: Self { "wheel" }
}

// MARK: - Pointer Events

extension HTMX.Trigger {
	@inlinable public static var pointerDown: Self { "pointerdown" }
	@inlinable public static var pointerUp: Self { "pointerup" }
	@inlinable public static var pointerMove: Self { "pointermove" }
	@inlinable public static var pointerOver: Self { "pointerover" }
	@inlinable public static var pointerOut: Self { "pointerout" }
	@inlinable public static var pointerEnter: Self { "pointerenter" }
	@inlinable public static var pointerLeave: Self { "pointerleave" }
	@inlinable public static var pointerCancel: Self { "pointercancel" }
	@inlinable public static var gotPointerCapture: Self { "gotpointercapture" }
	@inlinable public static var lostPointerCapture: Self { "lostpointercapture" }
	@inlinable public static var pointerRawUpdate: Self { "pointerrawupdate" }
}

// MARK: - Scroll Events

extension HTMX.Trigger {
	@inlinable public static var scroll: Self { "scroll" }
	@inlinable public static var scrollEnd: Self { "scrollend" }
}

// MARK: - Touch Events

extension HTMX.Trigger {
	@inlinable public static var touchStart: Self { "touchstart" }
	@inlinable public static var touchMove: Self { "touchmove" }
	@inlinable public static var touchEnd: Self { "touchend" }
	@inlinable public static var touchCancel: Self { "touchcancel" }
}

// MARK: - Window Events

extension HTMX.Trigger {
	@inlinable public static var afterPrint: Self { "afterprint" }
	@inlinable public static var beforePrint: Self { "beforeprint" }
	@inlinable public static var beforeUnload: Self { "beforeunload" }
	@inlinable public static var hashChange: Self { "hashchange" }
	@inlinable public static var languageChange: Self { "languagechange" }
	@inlinable public static var message: Self { "message" }
	@inlinable public static var messageError: Self { "messageerror" }
	@inlinable public static var offline: Self { "offline" }
	@inlinable public static var online: Self { "online" }
	@inlinable public static var pageHide: Self { "pagehide" }
	@inlinable public static var pageShow: Self { "pageshow" }
	@inlinable public static var popState: Self { "popstate" }
	@inlinable public static var rejectionHandled: Self { "rejectionhandled" }
	@inlinable public static var storage: Self { "storage" }
	@inlinable public static var unhandledRejection: Self { "unhandledrejection" }
	@inlinable public static var unload: Self { "unload" }
}

// MARK: - Polling

extension HTMX.Trigger {

	/// Creates a repeating polling trigger.
	@inlinable public static func every(_ interval: consuming Duration) -> Self {
		.init(rawValue: "every").appending(interval.cssTime)
	}
}

// MARK: - Modifiers

extension HTMX.Trigger {

	/// Specifies event ot only trigger once.
	@inlinable public consuming func once() -> Self {
		appending("once")
	}

	/// Specifies event to trigger after changes.
	@inlinable public consuming func changed() -> Self {
		appending("changed")
	}

	/// Specifies event to trigger after some delay.
	@inlinable public consuming func delay(_ interval: consuming Duration) -> Self {
		appending("delay", value: interval.cssTime)
	}

	/// Specifies event to trigger after some delay.
	@inlinable public consuming func throttle(_ interval: consuming Duration) -> Self {
		appending("throttle", value: interval.cssTime)
	}

	// TODO: support from:window
	// TODO: support from:document
	/// Specifies a request to come from another element in the document.
	@inlinable public consuming func from(_ selector: consuming HTMX.FromSelector) -> Self {
		appending("from", value: selector.rawValue)
	}

	/// Specifies a filter via a selector on the target of the event.
	@inlinable public consuming func target(_ selector: consuming String) -> Self {
		appending("target", value: selector)
	}

	/// Specifies the event will call `preventDefault()`.
	@inlinable public consuming func prevent() -> Self {
		appending("prevent")
	}

	/// Specifies the event will call `stopPropagation()`.
	@inlinable public consuming func stop() -> Self {
		appending("stop")
	}
	/// Specifies the event will be triggered during capture phase, not bubble phase.
	@inlinable public consuming func capture() -> Self {
		appending("capture")
	}

	/// Specifies the event will not call `preventDefault()`.
	@inlinable public consuming func passive() -> Self {
		appending("passive")
	}

	@usableFromInline consuming func appending(_ modifier: consuming String, value: consuming String? = nil) -> Self {
		rawValue.append(" ")
		rawValue.append(modifier)

		if let value {
			rawValue.append(":")
			rawValue.append(value)
		}

		return self
	}
}

// MARK: -

extension HTMX.Trigger: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
