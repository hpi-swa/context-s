testing
test03aCallPartialMethodWithSuperCall
	
	self addMethodFrom: self partialSubCountMethod toClass: CSSubclassB.
	#l1 withLayerDo: [ self assert: CSSubclassB new generatedPartialMethod = 3 ].