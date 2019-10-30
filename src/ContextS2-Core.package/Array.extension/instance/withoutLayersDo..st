*contexts2-core
withoutLayersDo: aBlock
	"Memorize currently active layers, remove some and restore the state afterwards."
	
	^ Processor activeProcess csInfo
		withLayers: (Processor activeProcess csInfo activeLayers copyWithoutAll: self)
		do: aBlock