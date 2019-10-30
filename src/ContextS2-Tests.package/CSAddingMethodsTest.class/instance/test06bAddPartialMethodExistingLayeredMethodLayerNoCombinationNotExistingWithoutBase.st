testing
test06bAddPartialMethodExistingLayeredMethodLayerNoCombinationNotExistingWithoutBase
	
	| layeredMethod |
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1).
	self deny: layeredMethod includesBaseMethod.
	
	[self addMethodFrom: self threeLayersCode] valueSupplyingAnswer: true.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1 l2 l3).
	self deny: layeredMethod includesBaseMethod.