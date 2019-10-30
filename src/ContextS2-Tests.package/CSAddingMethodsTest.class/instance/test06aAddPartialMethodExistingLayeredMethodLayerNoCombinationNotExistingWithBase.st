testing
test06aAddPartialMethodExistingLayeredMethodLayerNoCombinationNotExistingWithBase
	
	| layeredMethod oldPartial |
	self addMethodFrom: self baseCode.
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1).
	self assert: layeredMethod includesBaseMethod.
	oldPartial := layeredMethod partialMethods first.
	
	[self addMethodFrom: self threeLayersCode] valueSupplyingAnswer: true.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1 l2 l3).
	self assert: layeredMethod partialMethods first ~= oldPartial.