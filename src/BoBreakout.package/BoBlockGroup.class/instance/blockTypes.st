blocks
blockTypes

	^ Dictionary newFrom: {
		self class block -> [ self blockPrototype ].
		self class strongBlock -> [ self strongBlockPrototype ] }