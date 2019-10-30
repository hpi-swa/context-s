testing
test04AddPartialMethodExistingNil
	
	| layeredMethod |
	self addMethodFrom: self singleLayerCode.
	layeredMethod := self generatedMethod.
	self assert: layeredMethod class == CSLayeredMethod.
	self deny: layeredMethod includesBaseMethod.
	self assert: layeredMethod partialMethods size = 1.