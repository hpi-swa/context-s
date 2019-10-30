accessing
paddleKeysUp

	^ IdentityDictionary newFrom: {
		self class leftKey -> [ self leftKeyDown: false  ].
		self class rightKey -> [ self rightKeyDown: false ].
		self class spaceKey -> [ self spaceAction ] }