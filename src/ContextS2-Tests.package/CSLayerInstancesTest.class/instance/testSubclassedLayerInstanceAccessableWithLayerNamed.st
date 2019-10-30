testing
testSubclassedLayerInstanceAccessableWithLayerNamed
	
	| instance |
	instance := CSTestLayer instance.
	self assert: instance == (CSLayer layerNamed: CSTestLayer globalLayerName).
	CSTestLayer resetInstance.
	instance := CSTestLayer instance.
	self assert: instance == (CSLayer layerNamed: CSTestLayer globalLayerName).