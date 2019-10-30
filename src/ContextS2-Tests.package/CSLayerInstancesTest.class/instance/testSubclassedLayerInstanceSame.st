testing
testSubclassedLayerInstanceSame
	
	| instance |
	CSTestLayer resetInstance.
	instance := CSTestLayer instance.
	self assert: CSTestLayer instance == instance.