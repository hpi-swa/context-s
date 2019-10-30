testing
test06cAddPartialMethodExistingLayeredMethodLayerCombinationExistingSingle
	
	| layeredMethod oldPartialMethod |
	self addMethodFrom: self baseCode.
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod partialMethods size = 1.
	oldPartialMethod := layeredMethod partialMethods first.
	
	self addMethodFrom: self singleLayerCode.
	self assert: layeredMethod partialMethods size = 1.
	self assert: layeredMethod partialMethods first layers = #(l1).
	self deny: layeredMethod partialMethods first == oldPartialMethod.