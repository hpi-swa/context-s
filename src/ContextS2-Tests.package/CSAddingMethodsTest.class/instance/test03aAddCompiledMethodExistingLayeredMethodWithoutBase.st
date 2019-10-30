testing
test03aAddCompiledMethodExistingLayeredMethodWithoutBase
	
	| layeredMethod |
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self deny: layeredMethod includesBaseMethod.
	self assert: layeredMethod baseMethod isNil.
	
	self addMethodFrom: self baseCode.
	self assert: layeredMethod includesBaseMethod.
	self assert: layeredMethod partialMethods size == 1.
	self assert: layeredMethod partialMethods first class == CSPartialMethod.
	self assert: layeredMethod baseMethod class == CompiledMethod.