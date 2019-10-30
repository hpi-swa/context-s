message list
messageListKey: aChar from: view event: anEvent

	anEvent anyModifierKeyPressed ifFalse: [^ false].
	^ self messageListKey: aChar from: view