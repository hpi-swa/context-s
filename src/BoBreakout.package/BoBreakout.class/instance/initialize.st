initialization
initialize

	super initialize.
	BoTextureProvider recreateInstance.
	self 
		setNewImageFrom: 
			(BoTextureProvider instance textureWithSymbol: #background);
		loadComponent: #menu