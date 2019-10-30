adding
createLife

	| life |
	
	life := ImageMorph new.
	life setNewImageFrom: (BoTextureProvider instance textureWithSymbol: #heart).
						
	^ life