testing
testSubclassedLayerInstanceReplaced
	
	| instance |
	CSTestLayer resetInstance.
	instance := CSTestLayer instance.
	CSTestLayer resetInstance.
	self deny: CSTestLayer instance == instance.