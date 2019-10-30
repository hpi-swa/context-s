testing
test01CompilePartialMethodAndToClass
	
	| partialMethod |
	partialMethod := self partialMethodFrom: CSClassB.
	self assert: partialMethod layers = #(l1).
	self assert: partialMethod method class == CompiledMethod.
	self assert: partialMethod method selector == self generatedSelector.
	self assert: partialMethod method methodClass == CSClassB.