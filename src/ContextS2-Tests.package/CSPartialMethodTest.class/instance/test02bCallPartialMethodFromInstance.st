testing
test02bCallPartialMethodFromInstance
	
	#l1 withLayerDo: [ self assert: CSClassB new generatedPartialMethod = 2 ].