partial methods
getCurrentLayerOf: aSymbol on: aLayer
	<layer: #additional>
	aLayer withLayerDo: [ ^ self perform: aSymbol ].