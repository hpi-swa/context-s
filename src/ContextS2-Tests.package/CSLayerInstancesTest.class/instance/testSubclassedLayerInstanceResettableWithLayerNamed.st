testing
testSubclassedLayerInstanceResettableWithLayerNamed
	
	| instance |
	instance := CSTestLayer instance.
	CSLayer resetLayer: CSTestLayer globalLayerName.
	self deny: instance == CSTestLayer instance.