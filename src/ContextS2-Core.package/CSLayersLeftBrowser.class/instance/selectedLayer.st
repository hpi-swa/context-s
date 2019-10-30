ui-layers
selectedLayer
	"This returns the name of the layer (as symbol), not the layer object."
	
	^ self selectedLayerIndex = 0
		ifTrue: [ self class allLayersMarker ]
		ifFalse: [ self contextLayerList at: self selectedLayerIndex ]