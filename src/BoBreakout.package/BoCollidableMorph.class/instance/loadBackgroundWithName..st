initialization
loadBackgroundWithName: aString

	self setNewImageFrom:
		(BoTextureProvider instance textureWithSymbol: (aString asSymbol))