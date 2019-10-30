testing
test03bCompileMultipleLayers
	
	| method |
	method := self compile: self threeLayersCode.
	self assert: method class = CSPartialMethod.
	self assert: method layers = #(l1 l2 l3).
	self assert: method method class == CompiledMethod.