testing
test06dAddPartialMethodExistingLayeredMethodLayerCombinationExistingMultiple
	
	| layeredMethod  oldBaseMethod oldPartialMethod |
	self addMethodFrom: self baseCode.
	self addMethodFrom: self threeLayersCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod partialMethods size = 1.
	oldPartialMethod := layeredMethod partialMethods first.
	oldBaseMethod := layeredMethod baseMethod.
	
	self addMethodFrom: self threeLayersCode.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1 l2 l3).
	self deny: layeredMethod partialMethods first == oldPartialMethod.
	self assert: layeredMethod baseMethod == oldBaseMethod.
	oldPartialMethod := layeredMethod partialMethods first.
	
	self addMethodFrom: self baseCode.
	self deny: layeredMethod baseMethod == oldBaseMethod.
	self assert: layeredMethod partialMethods first == oldPartialMethod.