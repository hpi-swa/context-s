testing
testAnonymousLayerInstanceReplaced
	
	| instance |
	CSLayer resetLayer: self layerName.
	instance := CSLayer layerNamed: self layerName.
	CSLayer resetLayer: self layerName.
	self deny: (CSLayer layerNamed: self layerName) == instance.