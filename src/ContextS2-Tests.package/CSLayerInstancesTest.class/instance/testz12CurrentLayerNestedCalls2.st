testing-current-layer
testz12CurrentLayerNestedCalls2
	"Current Layer not changed when another partial method is invoked in its base version."
	
	| layer |
	#b withLayerDo: [ layer := CSClassA new getCurrentLayerOf: #getCurrentLayerA on: #zzz ].
	self assert: layer notNil.
	self assert: layer size == 1.
	self assert: layer first layerName == #b.