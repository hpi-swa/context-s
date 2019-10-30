testing-current-layer
test9CurrentLayerMultipleLayersTwoLayerMethod2
	
	| layer |
	#(a b) withLayersDo: [ layer := CSClassA new getCurrentLayerBA ].
	self assert: layer notNil.
	self assert: layer size == 2.
	self assert: (layer collect: #layerName) sort = #(a b).