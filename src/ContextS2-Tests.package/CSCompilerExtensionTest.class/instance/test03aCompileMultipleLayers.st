testing
test03aCompileMultipleLayers
	
	| method |
	method := self compile: self singleLayerCode.
	self assert: method class = CSPartialMethod.
	self assert: method layers = #(l1).
	self assert: method method class == CompiledMethod.