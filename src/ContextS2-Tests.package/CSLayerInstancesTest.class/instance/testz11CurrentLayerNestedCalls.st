testing-current-layer
testz11CurrentLayerNestedCalls
	"First partial method on layer #b is run, and inside another partial method on layer #a."
	
	| layer |
	#b withLayerDo: [ layer := CSClassA new getCurrentLayerOf: #getCurrentLayerA on: #a ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #a.