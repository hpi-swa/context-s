accessing
setLayers: someLayers

	someLayers isEmptyOrNil ifFalse: [
		" make sure the layer objects are there "
		someLayers do: [ :symbol | CSLayer layerNamed: symbol]].
	layers := someLayers.