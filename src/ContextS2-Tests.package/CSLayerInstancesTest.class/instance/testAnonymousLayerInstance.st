testing
testAnonymousLayerInstance
	
	| instance |
	CSLayer layerNamed: self layerName.
	self assert: (Smalltalk includesKey: self layerName).
	CSLayer resetLayer: self layerName.
	self assert: (Smalltalk includesKey: self layerName) not.
	instance := CSLayer layerNamed: self layerName.
	self assert: (Smalltalk at: self layerName) == instance.