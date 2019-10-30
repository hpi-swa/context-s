partial methods
getCurrentLayerOf: aSymbol on: aLayer
	<layer: #a>
	aLayer withLayerDo: [ ^ self perform: aSymbol ].