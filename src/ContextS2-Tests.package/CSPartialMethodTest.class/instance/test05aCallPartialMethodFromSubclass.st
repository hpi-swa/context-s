testing
test05aCallPartialMethodFromSubclass
	
	#l1 withLayerDo: [ self assert: CSSubclassB new generatedPartialMethod = 2 ].