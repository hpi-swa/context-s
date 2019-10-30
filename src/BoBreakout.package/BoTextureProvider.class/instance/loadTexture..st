loading
loadTexture: aTextureName

	| texture defaultURI textureExtension |
	(self class respondsTo: aTextureName asSymbol)
		ifTrue: [texture := self class perform: aTextureName asSymbol]
		ifFalse: [
			defaultURI := 'BoBreakout/figures/'.
			textureExtension := '.png'.
			texture := ImageReadWriter formFromFileNamed: 
				(FileDirectory uri: defaultURI, aTextureName, textureExtension ) fullName].
	self textures at: aTextureName asSymbol put: texture.
	
	^ texture