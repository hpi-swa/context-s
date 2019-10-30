testing-current-layer
test6CurrentLayerSingleLayerTwoLayerMethod
	
	| layer |
	#a withLayerDo: [ layer := CSClassA new getCurrentLayerAB ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #a.