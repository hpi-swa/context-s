message list - icons
invalidateMessageIconForAllNamed: aSelector
	
	self messageIconCache: (self messageIconCache associationsSelect: [:assoc |
		| compiledMethod |
		compiledMethod := assoc key.
		compiledMethod selector ~~ aSelector]).
		