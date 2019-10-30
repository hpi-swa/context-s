testing-current-layer
testz12CurrentLayerNestedCalls4
	
	| layer |
	#b withLayerDo: [ layer := CSClassA new getCurrentLayerOf: #getCurrentLayerAB on: #zzz ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #b.