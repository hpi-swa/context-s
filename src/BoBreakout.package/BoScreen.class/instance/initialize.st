initialization
initialize 

	super initialize.
	self setNewImageFrom: 
		(BoTextureProvider instance textureWithSymbol: self class image)