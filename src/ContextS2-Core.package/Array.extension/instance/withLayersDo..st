*contexts2-core
withLayersDo: aBlock
	"Memorize currently active layers, add the new ones and restore the state afterwards.
	The layer-name-symbols are extracted from the receiver, in case real CSLayer-object are stored here.
	TODO in future, change internal layer-management to only use real layer-objects."
	
	| layerNames |
	layerNames := self collect: #layerName.
	^ Processor activeProcess csInfo
		withLayers: (Processor activeProcess csInfo activeLayers copyWithoutAll: layerNames), layerNames
		do: aBlock