*contexts2-core
currentLayer
	"Return the first of the currentLayers for convenience.
	This should be the first activated layer that has lead to the activation of the last partial method."
	
	^ self currentLayers ifNotNilDo: #first