testing
test03CallPartialMethodWithSuperCall
	
	CSClassB methodDict at: self generatedSelector put: (self partialMethodFrom: CSClassB).
	self addMethodFrom: self partialSubCountMethod toClass: CSSubclassB.
	CSSubclassB methodDict at: self generatedSelector put: (self partialMethodFrom: CSSubclassB).
	self assert: CSSubclassB new generatedPartialMethod = 3.