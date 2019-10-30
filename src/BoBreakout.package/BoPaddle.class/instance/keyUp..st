event handling
keyUp: anEvent
	
	Smalltalk os platformName asSymbol withLayerDo: [
		(self paddleKeysUp at: anEvent keyCharacter ifAbsent: []) value].