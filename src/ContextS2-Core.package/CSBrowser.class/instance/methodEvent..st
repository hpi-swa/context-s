system events
methodEvent: anEvent

	self invalidateMessageIconForAllNamed: anEvent itemMethod selector.
	self changed: #messageList.