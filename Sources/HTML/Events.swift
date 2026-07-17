//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension Attribute where Tag: HTMLTags.Abortable {

	/// Fires when resource loading is aborted before completion.
	@inlinable public static func onAbort(_ script: consuming String) -> Self {
		.init(name: "onabort", value: script)
	}
}

// MARK: -

extension Attribute where Tag: HTMLTags.Failable {

	/// Fires when the element fails to load its resource.
	@inlinable public static func onError(_ script: consuming String) -> Self {
		.init(name: "onerror", value: script)
	}
}

// MARK: -

extension Attribute where Tag: HTMLTags.Loadable {

	/// Fires when the element (or its resource) has finished loading.
	@inlinable public static func onLoad(_ script: consuming String) -> Self {
		.init(name: "onload", value: script)
	}
}

// MARK: - Animation Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when a CSS animation starts.
	@inlinable public static func onAnimationStart(_ script: consuming String) -> Self {
		.init(name: "onanimationstart", value: script)
	}

	/// Fires when a CSS animation completes.
	@inlinable public static func onAnimationEnd(_ script: consuming String) -> Self {
		.init(name: "onanimationend", value: script)
	}

	/// Fires at the end of each iteration of a repeating CSS animation.
	@inlinable public static func onAnimationIteration(_ script: consuming String) -> Self {
		.init(name: "onanimationiteration", value: script)
	}

	/// Fires when a CSS animation is unexpectedly cancelled.
	@inlinable public static func onAnimationCancel(_ script: consuming String) -> Self {
		.init(name: "onanimationcancel", value: script)
	}

	/// Fires when a CSS transition starts.
	@inlinable public static func onTransitionStart(_ script: consuming String) -> Self {
		.init(name: "ontransitionstart", value: script)
	}

	/// Fires when a CSS transition completes.
	@inlinable public static func onTransitionEnd(_ script: consuming String) -> Self {
		.init(name: "ontransitionend", value: script)
	}

	/// Fires when a CSS transition is unexpectedly cancelled.
	@inlinable public static func onTransitionCancel(_ script: consuming String) -> Self {
		.init(name: "ontransitioncancel", value: script)
	}

	/// Fires when a CSS transition is created and begins delaying.
	@inlinable public static func onTransitionRun(_ script: consuming String) -> Self {
		.init(name: "ontransitionrun", value: script)
	}
}

// MARK: - Clipboard Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when content is copied from the element.
	@inlinable public static func onCopy(_ script: consuming String) -> Self {
		.init(name: "oncopy", value: script)
	}

	/// Fires when content is cut from the element.
	@inlinable public static func onCut(_ script: consuming String) -> Self {
		.init(name: "oncut", value: script)
	}

	/// Fires when content is pasted into the element.
	@inlinable public static func onPaste(_ script: consuming String) -> Self {
		.init(name: "onpaste", value: script)
	}
}

// MARK: - Command Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires on an element that is controlled via a `<button command="..." commandFor="...">`.
	@inlinable public static func onCommand(_ script: consuming String) -> Self {
		.init(name: "oncommand", value: script)
	}
}

// MARK: - Dialog Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires before a details, dialog, or popover element's open state changes.
	@inlinable public static func onBeforeToggle(_ script: consuming String) -> Self {
		.init(name: "onbeforetoggle", value: script)
	}

	/// Fires when a modal dialog is cancelled, e.g. via the Escape key.
	@inlinable public static func onCancel(_ script: consuming String) -> Self {
		.init(name: "oncancel", value: script)
	}

	/// Fires when a dialog is closed.
	@inlinable public static func onClose(_ script: consuming String) -> Self {
		.init(name: "onclose", value: script)
	}

	/// Fires when a details, dialog, or popover element's open state changes.
	@inlinable public static func onToggle(_ script: consuming String) -> Self {
		.init(name: "ontoggle", value: script)
	}
}

// MARK: - Focus Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when the element loses focus.
	@inlinable public static func onBlur(_ script: consuming String) -> Self {
		.init(name: "onblur", value: script)
	}

	/// Fires when the element gains focus.
	@inlinable public static func onFocus(_ script: consuming String) -> Self {
		.init(name: "onfocus", value: script)
	}

	/// Fires when the element gains focus (bubbling focus).
	@inlinable public static func onFocusIn(_ script: consuming String) -> Self {
		.init(name: "onfocusin", value: script)
	}

	/// Fires when the element loses focus (bubbling blur).
	@inlinable public static func onFocusOut(_ script: consuming String) -> Self {
		.init(name: "onfocusout", value: script)
	}
}

// MARK: - Form Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when the value of a form control is committed by the user.
	@inlinable public static func onChange(_ script: consuming String) -> Self {
		.init(name: "onchange", value: script)
	}

	/// Fires when the value of an input-like element changes as the user types.
	@inlinable public static func onInput(_ script: consuming String) -> Self {
		.init(name: "oninput", value: script)
	}

	/// Fires when a form control fails constraint validation.
	@inlinable public static func onInvalid(_ script: consuming String) -> Self {
		.init(name: "oninvalid", value: script)
	}

	/// Fires when a form is reset.
	@inlinable public static func onReset(_ script: consuming String) -> Self {
		.init(name: "onreset", value: script)
	}

	/// Fires when text within the element is selected.
	@inlinable public static func onSelect(_ script: consuming String) -> Self {
		.init(name: "onselect", value: script)
	}

	/// Fires when a form is submitted.
	@inlinable public static func onSubmit(_ script: consuming String) -> Self {
		.init(name: "onsubmit", value: script)
	}

	/// Fires before editable content is changed.
	@inlinable public static func onBeforeInput(_ script: consuming String) -> Self {
		.init(name: "onbeforeinput", value: script)
	}
}

// MARK: - Fullsreen Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires immediately after an Element switches into or out of fullscreen mode.
	@inlinable public static func onFullscreenChange(_ script: consuming String) -> Self {
		.init(name: "onfullscreenchange", value: script)
	}

	/// Fires when the browser cannot switch to fullscreen mode.
	@inlinable public static func onFullscreenError(_ script: consuming String) -> Self {
		.init(name: "onfullscreenerror", value: script)
	}
}

// MARK: - Interactive Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires repeatedly while an element is being dragged.
	@inlinable public static func onDrag(_ script: consuming String) -> Self {
		.init(name: "ondrag", value: script)
	}

	/// Fires when a drag operation starts.
	@inlinable public static func onDragStart(_ script: consuming String) -> Self {
		.init(name: "ondragstart", value: script)
	}

	/// Fires when a drag operation ends.
	@inlinable public static func onDragEnd(_ script: consuming String) -> Self {
		.init(name: "ondragend", value: script)
	}

	/// Fires when a dragged item enters a valid drop target.
	@inlinable public static func onDragEnter(_ script: consuming String) -> Self {
		.init(name: "ondragenter", value: script)
	}

	/// Fires when a dragged item leaves a valid drop target.
	@inlinable public static func onDragLeave(_ script: consuming String) -> Self {
		.init(name: "ondragleave", value: script)
	}

	/// Fires repeatedly while a dragged item is over a valid drop target.
	@inlinable public static func onDragOver(_ script: consuming String) -> Self {
		.init(name: "ondragover", value: script)
	}

	/// Fires when a dragged item is dropped on a valid drop target.
	@inlinable public static func onDrop(_ script: consuming String) -> Self {
		.init(name: "ondrop", value: script)
	}
}

// MARK: - Keyboard Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when a key is pressed down while the element has focus.
	@inlinable public static func onKeyDown(_ script: consuming String) -> Self {
		.init(name: "onkeydown", value: script)
	}

	/// Fires when a key is released while the element has focus.
	@inlinable public static func onKeyUp(_ script: consuming String) -> Self {
		.init(name: "onkeyup", value: script)
	}
}

// MARK: - Media Events

extension Attribute where Tag: HTMLTags.Playable {

	/// Fires when the user agent can play the media.
	@inlinable public static func onCanPlay(_ script: consuming String) -> Self {
		.init(name: "oncanplay", value: script)
	}

	/// Fires when the user agent can play the media up to its end.
	@inlinable public static func onCanPlayThrough(_ script: consuming String) -> Self {
		.init(name: "oncanplaythrough", value: script)
	}

	/// Fires when the `duration` attribute has been updated.
	@inlinable public static func onDurationChange(_ script: consuming String) -> Self {
		.init(name: "ondurationchange", value: script)
	}

	/// Fires when the media has become empty.
	@inlinable public static func onEmptied(_ script: consuming String) -> Self {
		.init(name: "onemptied", value: script)
	}

	/// Fires when playback or streaming has stopped because the end of the media was reached.
	@inlinable public static func onEnded(_ script: consuming String) -> Self {
		.init(name: "onended", value: script)
	}

	/// Fires when the frame at the current playback position of the media has finished loading.
	@inlinable public static func onLoadedData(_ script: consuming String) -> Self {
		.init(name: "onloadeddata", value: script)
	}

	/// Fires when the metadata has been loaded.
	@inlinable public static func onLoadedMetadata(_ script: consuming String) -> Self {
		.init(name: "onloadedmetadata", value: script)
	}

	/// Fires when the browser has started to load a resource.
	@inlinable public static func onLoadStart(_ script: consuming String) -> Self {
		.init(name: "onloadstart", value: script)
	}

	/// Fires when a request to pause an activity is handled and the activity has entered its paused state.
	@inlinable public static func onPause(_ script: consuming String) -> Self {
		.init(name: "onpause", value: script)
	}

	/// Fires when the paused property is changed to false, as a result of the play method, or the `autoplay` attribute.
	@inlinable public static func onPlay(_ script: consuming String) -> Self {
		.init(name: "onplay", value: script)
	}

	/// Fires after playback is first started, and whenever it is restarted.
	@inlinable public static func onPlaying(_ script: consuming String) -> Self {
		.init(name: "onplaying", value: script)
	}

	/// Fires periodically as the browser loads a resource.
	@inlinable public static func onProgress(_ script: consuming String) -> Self {
		.init(name: "onprogress", value: script)
	}

	/// Fires when the playback rate has changed.
	@inlinable public static func onRateChange(_ script: consuming String) -> Self {
		.init(name: "onratechange", value: script)
	}

	/// Fires when a seek operation completed, the current playback position has changed.
	@inlinable public static func onSeeked(_ script: consuming String) -> Self {
		.init(name: "onseeked", value: script)
	}

	/// Fires when a seek operation starts.
	@inlinable public static func onSeeking(_ script: consuming String) -> Self {
		.init(name: "onseeking", value: script)
	}

	/// Fires when the user agent is trying to fetch media data, but data is unexpectedly not forthcoming.
	@inlinable public static func onStalled(_ script: consuming String) -> Self {
		.init(name: "onstalled", value: script)
	}

	/// Fires when the user agent is intentionally not fetching media data.
	@inlinable public static func onSuspend(_ script: consuming String) -> Self {
		.init(name: "onsuspend", value: script)
	}

	/// Fires when the time indicated by the `currentTime` attribute has been updated.
	@inlinable public static func onTimeUpdate(_ script: consuming String) -> Self {
		.init(name: "ontimeupdate", value: script)
	}

	/// Fires when either the `volume` or the `muted` attribute has changed.
	@inlinable public static func onVolumeChange(_ script: consuming String) -> Self {
		.init(name: "onvolumechange", value: script)
	}

	/// Fires when playback has stopped because of a temporary lack of data.
	@inlinable public static func onWaiting(_ script: consuming String) -> Self {
		.init(name: "onwaiting", value: script)
	}
}

// MARK: - Misc Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when it is in the hidden until found state and the browser is about to
	/// reveal its content because the user has found the content through the "find
	/// in page" feature or through fragment navigation.
	@inlinable public static func onBeforeMatch(_ script: consuming String) -> Self {
		.init(name: "onbeforematch", value: script)
	}

	/// Fires when a Content Security Policy is violated.
	@inlinable public static func onSecurityPolicyViolation(_ script: consuming String) -> Self {
		.init(name: "onsecuritypolicyviolation", value: script)
	}
}

// MARK: - Mouse Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when the element is clicked.
	@inlinable public static func onClick(_ script: consuming String) -> Self {
		.init(name: "onclick", value: script)
	}

	/// Fires when the element is double-clicked.
	@inlinable public static func onDoubleClick(_ script: consuming String) -> Self {
		.init(name: "ondblclick", value: script)
	}

	/// Fires on an auxiliary pointer button press, e.g. a middle-click.
	@inlinable public static func onAuxClick(_ script: consuming String) -> Self {
		.init(name: "onauxclick", value: script)
	}

	/// Fires when a pointer button is pressed down over the element.
	@inlinable public static func onMouseDown(_ script: consuming String) -> Self {
		.init(name: "onmousedown", value: script)
	}

	/// Fires when a pointer button is released over the element.
	@inlinable public static func onMouseUp(_ script: consuming String) -> Self {
		.init(name: "onmouseup", value: script)
	}

	/// Fires repeatedly as the pointer moves over the element.
	@inlinable public static func onMouseMove(_ script: consuming String) -> Self {
		.init(name: "onmousemove", value: script)
	}

	/// Fires when the pointer moves onto the element or one of its children.
	@inlinable public static func onMouseOver(_ script: consuming String) -> Self {
		.init(name: "onmouseover", value: script)
	}

	/// Fires when the pointer moves off the element or one of its children.
	@inlinable public static func onMouseOut(_ script: consuming String) -> Self {
		.init(name: "onmouseout", value: script)
	}

	/// Fires when the pointer moves onto the element, not bubbling from children.
	@inlinable public static func onMouseEnter(_ script: consuming String) -> Self {
		.init(name: "onmouseenter", value: script)
	}

	/// Fires when the pointer moves off the element, not bubbling from children.
	@inlinable public static func onMouseLeave(_ script: consuming String) -> Self {
		.init(name: "onmouseleave", value: script)
	}

	/// Fires when the context menu is requested, e.g. via right-click.
	@inlinable public static func onContextMenu(_ script: consuming String) -> Self {
		.init(name: "oncontextmenu", value: script)
	}

	/// Fires when the mouse wheel or equivalent input is scrolled.
	@inlinable public static func onWheel(_ script: consuming String) -> Self {
		.init(name: "onwheel", value: script)
	}
}

// MARK: - Pointer Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when a pointer becomes active over the element.
	@inlinable public static func onPointerDown(_ script: consuming String) -> Self {
		.init(name: "onpointerdown", value: script)
	}

	/// Fires when an active pointer is released.
	@inlinable public static func onPointerUp(_ script: consuming String) -> Self {
		.init(name: "onpointerup", value: script)
	}

	/// Fires repeatedly as a pointer moves.
	@inlinable public static func onPointerMove(_ script: consuming String) -> Self {
		.init(name: "onpointermove", value: script)
	}

	/// Fires when a pointer moves onto the element or one of its children.
	@inlinable public static func onPointerOver(_ script: consuming String) -> Self {
		.init(name: "onpointerover", value: script)
	}

	/// Fires when a pointer moves off the element or one of its children.
	@inlinable public static func onPointerOut(_ script: consuming String) -> Self {
		.init(name: "onpointerout", value: script)
	}

	/// Fires when a pointer moves onto the element, not bubbling from children.
	@inlinable public static func onPointerEnter(_ script: consuming String) -> Self {
		.init(name: "onpointerenter", value: script)
	}

	/// Fires when a pointer moves off the element, not bubbling from children.
	@inlinable public static func onPointerLeave(_ script: consuming String) -> Self {
		.init(name: "onpointerleave", value: script)
	}

	/// Fires when a pointer interaction is unexpectedly cancelled.
	@inlinable public static func onPointerCancel(_ script: consuming String) -> Self {
		.init(name: "onpointercancel", value: script)
	}

	/// Fires when the element captures a pointer.
	@inlinable public static func onGotPointerCapture(_ script: consuming String) -> Self {
		.init(name: "ongotpointercapture", value: script)
	}

	/// Fires when the element loses a previously captured pointer.
	@inlinable public static func onLostPointerCapture(_ script: consuming String) -> Self {
		.init(name: "onlostpointercapture", value: script)
	}

	/// Fires when a pointer changes any properties that don't fire `onpointerdown` or `onpointerup` events.
	@inlinable public static func onPointerRawUpdate(_ script: consuming String) -> Self {
		.init(name: "onpointerrawupdate", value: script)
	}
}

// MARK: - Resize Events

extension Attribute where Tag: HTMLTags.Resizable {

	/// Fires when the element is resized.
	@inlinable public static func onResize(_ script: consuming String) -> Self {
		.init(name: "onresize", value: script)
	}
}

// MARK: - Scroll Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when an element's scrollbar is being scrolled.
	@inlinable public static func onScroll(_ script: consuming String) -> Self {
		.init(name: "onscroll", value: script)
	}

	/// Fires when element scrolling has completed.
	@inlinable public static func onScrollEnd(_ script: consuming String) -> Self {
		.init(name: "onscrollend", value: script)
	}
}

// MARK: - Touch Events

extension Attribute where Tag: HTMLTags.Visible {

	/// Fires when one or more touch points are placed on the touch surface.
	@inlinable public static func onTouchStart(_ script: consuming String) -> Self {
		.init(name: "ontouchstart", value: script)
	}

	/// Fires when one or more touch points are moved along the touch surface.
	@inlinable public static func onTouchMove(_ script: consuming String) -> Self {
		.init(name: "ontouchmove", value: script)
	}

	/// Fires when one or more touch points are removed from the touch surface.
	@inlinable public static func onTouchEnd(_ script: consuming String) -> Self {
		.init(name: "ontouchend", value: script)
	}

	/// Fires when one or more touch points have been disrupted.
	@inlinable public static func onTouchCancel(_ script: consuming String) -> Self {
		.init(name: "ontouchcancel", value: script)
	}
}

// MARK: - Window Events

extension Attribute where Tag == HTMLTags.Body {

	/// Fires after the document finishes printing or the print preview closes.
	@inlinable public static func onAfterPrint(_ script: consuming String) -> Self {
		.init(name: "onafterprint", value: script)
	}

	/// Fires when the print dialog is about to open.
	@inlinable public static func onBeforePrint(_ script: consuming String) -> Self {
		.init(name: "onbeforeprint", value: script)
	}

	/// Fires before the document is unloaded, allowing a confirmation prompt.
	@inlinable public static func onBeforeUnload(_ script: consuming String) -> Self {
		.init(name: "onbeforeunload", value: script)
	}

	/// Fires when the fragment identifier of the URL changes.
	@inlinable public static func onHashChange(_ script: consuming String) -> Self {
		.init(name: "onhashchange", value: script)
	}

	/// Fires when the user's preferred languages change.
	@inlinable public static func onLanguageChange(_ script: consuming String) -> Self {
		.init(name: "onlanguagechange", value: script)
	}

	/// Fires when the window receives a message via `postMessage`.
	@inlinable public static func onMessage(_ script: consuming String) -> Self {
		.init(name: "onmessage", value: script)
	}

	/// Fires when a message event fails to be deserialized.
	@inlinable public static func onMessageError(_ script: consuming String) -> Self {
		.init(name: "onmessageerror", value: script)
	}

	/// Fires when the browser loses network connectivity.
	@inlinable public static func onOffline(_ script: consuming String) -> Self {
		.init(name: "onoffline", value: script)
	}

	/// Fires when the browser regains network connectivity.
	@inlinable public static func onOnline(_ script: consuming String) -> Self {
		.init(name: "ononline", value: script)
	}

	/// Fires when the page is about to be hidden, e.g. during navigation.
	@inlinable public static func onPageHide(_ script: consuming String) -> Self {
		.init(name: "onpagehide", value: script)
	}

	/// Fires when a previously hidden page becomes visible again.
	@inlinable public static func onPageShow(_ script: consuming String) -> Self {
		.init(name: "onpageshow", value: script)
	}

	/// Fires when navigating between history entries.
	@inlinable public static func onPopState(_ script: consuming String) -> Self {
		.init(name: "onpopstate", value: script)
	}

	/// Fires when a previously unhandled promise rejection becomes handled.
	@inlinable public static func onRejectionHandled(_ script: consuming String) -> Self {
		.init(name: "onrejectionhandled", value: script)
	}

	/// Fires when a storage area accessible to the document changes.
	@inlinable public static func onStorage(_ script: consuming String) -> Self {
		.init(name: "onstorage", value: script)
	}

	/// Fires when an unhandled promise rejection occurs.
	@inlinable public static func onUnhandledRejection(_ script: consuming String) -> Self {
		.init(name: "onunhandledrejection", value: script)
	}

	/// Fires when the document is being unloaded.
	@inlinable public static func onUnload(_ script: consuming String) -> Self {
		.init(name: "onunload", value: script)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTags.Canvas {

	/// Fires if the user agent detects that the backing storage is lost.
	@inlinable public static func onContextLost(_ script: consuming String) -> Self {
		.init(name: "oncontextlost", value: script)
	}

	/// Fires if the user agent restores the backing storage.
	@inlinable public static func onContextRestored(_ script: consuming String) -> Self {
		.init(name: "oncontextrestored", value: script)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTags.Form {

	/// Fires after the entry list representing the form's data is constructed.
	@inlinable public static func onFormData(_ script: consuming String) -> Self {
		.init(name: "onformdata", value: script)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTags.Slot {

	/// Fires when the assigned nodes of a `<slot>` element change.
	@inlinable public static func onSlotChange(_ script: consuming String) -> Self {
		.init(name: "onslotchange", value: script)
	}
}

// MARK: -

extension Attribute where Tag == HTMLTags.Track {

	/// Fires when the cue changes.
	@inlinable public static func onCueChange(_ script: consuming String) -> Self {
		.init(name: "oncuechange", value: script)
	}
}
