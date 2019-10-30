textures
textureWithSymbol: aSymbol

	^ self textures at: aSymbol ifAbsent: [ self loadTexture: aSymbol asString ]