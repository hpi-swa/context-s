testing
test05CallPartialMethodFromSubclass

	CSClassB methodDict at: self generatedSelector put: (self partialMethodFrom: CSClassB).
	self assert: CSSubclassB new generatedPartialMethod = 2.