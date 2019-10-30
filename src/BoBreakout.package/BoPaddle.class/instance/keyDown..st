event handling
keyDown: anEvent

	Smalltalk os platformName asSymbol withLayerDo: [
		(self paddleKeysDown at: anEvent keyCharacter ifAbsent: []) value].