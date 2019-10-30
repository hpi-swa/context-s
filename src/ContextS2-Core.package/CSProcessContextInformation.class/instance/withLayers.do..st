layer handling
withLayers: aCollection do: aBlock
	"Convenience method for layer-manipulation. Stores old layers and restores them after executing aBlock."
	
	| oldLayers |
	oldLayers := self activeLayers.
	self activeLayers: aCollection.
	^ aBlock ensure: [ self activeLayers: oldLayers ]