testing-current-layer
testz10CurrentLayerMultipleLayersTwoLayerMethod3
	
	| layer |
	#(b a) withLayersDo: [ layer := CSClassA new getCurrentLayerAB ].
	self assert: layer notNil.
	self assert: layer size == 2.
	self assert: (layer collect: #layerName) sort = #(a b).