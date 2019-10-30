testing-current-layer
testz12CurrentLayerNestedCalls3
	
	| layer |
	#a withLayerDo: [ layer := CSClassA new getCurrentLayerOf: #getCurrentLayerA on: #zzz ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #a.