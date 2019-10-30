testing
test04CallPartialMethodWithSuperCallToStandardMethod
	
	CSClassB methodDict at: self generatedSelector put: (self partialMethodFrom: CSClassB).
	self addMethodFrom: self partialSubSuperCountMethod toClass: CSSubclassB.
	CSSubclassB methodDict at: self generatedSelector put: (self partialMethodFrom: CSSubclassB).
	self assert: CSSubclassB new generatedPartialMethod = 1.