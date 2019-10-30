accessing
paddleKeysDown

	^ IdentityDictionary newFrom: {
		self class leftKey -> [ self leftKeyDown: true ].
		self class rightKey -> [ self rightKeyDown: true ] }