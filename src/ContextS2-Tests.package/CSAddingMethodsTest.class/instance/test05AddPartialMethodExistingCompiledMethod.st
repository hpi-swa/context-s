testing
test05AddPartialMethodExistingCompiledMethod
	
	| compiledMethod layeredMethod |
	self addMethodFrom: self baseCode.
	compiledMethod := self generatedMethod.
	self assert: compiledMethod class == CompiledMethod.
	
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod class == CSLayeredMethod.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod basePartialMethod method == compiledMethod.
	self assert: layeredMethod partialMethods first class == CSPartialMethod.
	self assert: layeredMethod baseMethod == compiledMethod.