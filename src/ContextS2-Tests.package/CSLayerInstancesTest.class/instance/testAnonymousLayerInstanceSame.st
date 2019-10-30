testing
testAnonymousLayerInstanceSame
	
	| instance |
	CSLayer resetLayer: self layerName.
	instance := CSLayer layerNamed: self layerName.
	self assert: (CSLayer layerNamed: self layerName) == instance.