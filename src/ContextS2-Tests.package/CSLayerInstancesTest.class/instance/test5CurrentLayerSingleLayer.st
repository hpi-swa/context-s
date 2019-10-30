testing-current-layer
test5CurrentLayerSingleLayer
	
	| layer |
	#a withLayerDo: [ layer := CSClassA new getCurrentLayerA ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #a.