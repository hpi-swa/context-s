testing
testSubclassedLayerInstance
	"This tests 2 things: #resetInstance (removes the global variable) and #instance (creates it and adds it as global variable)"
	
	| instance |
	CSTestLayer instance.
	self assert: (Smalltalk includesKey: CSTestLayer globalLayerName).
	CSTestLayer resetInstance.
	self assert: (Smalltalk includesKey: CSTestLayer globalLayerName) not.
	instance := CSTestLayer instance.
	self assert: (Smalltalk at: CSTestLayer globalLayerName) == instance.