testing-current-layer
test7CurrentLayerSingleLayerTwoLayerMethod2
	
	| layer |
	#b withLayerDo: [ layer := CSClassA new getCurrentLayerAB ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #b.