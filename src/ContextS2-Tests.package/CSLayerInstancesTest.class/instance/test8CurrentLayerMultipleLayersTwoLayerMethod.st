testing-current-layer
test8CurrentLayerMultipleLayersTwoLayerMethod
	
	| layer |
	#(a b) withLayersDo: [ layer := CSClassA new getCurrentLayerAB ].
	self assert: layer notNil.
	self assert: layer size == 2.
	self assert: (layer collect: #layerName) = #(a b).