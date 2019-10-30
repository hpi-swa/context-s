testing
test03bAddCompiledMethodExistingLayeredMethodWithBase
	
	| layeredMethod oldBaseMethod |
	self addMethodFrom: self baseCode.
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod partialMethods size = 1.
	oldBaseMethod := layeredMethod baseMethod.
	
	self addMethodFrom: self baseCode.
	self assert: layeredMethod partialMethods size = 1.
	self deny: layeredMethod baseMethod == oldBaseMethod.