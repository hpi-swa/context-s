accessing
selectedLayerSymbol
	"This returns the name of the layer (as symbol), not the layer object."
	
	^ selectedLayerSymbol ifNil: [selectedLayerSymbol := self class allLayersMarker]