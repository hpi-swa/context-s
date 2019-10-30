partial methods
getCurrentLayerOf: aSymbol on: aLayer
	<layer: #b>
	aLayer withLayerDo: [ ^ self perform: aSymbol ].