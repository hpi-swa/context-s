testing
test02CompileBaseMethodAsPartialMethod
	
	| method |
	method := (self compile: self baseCode) asPartialMethod.
	self assert: method class = CSPartialMethod.
	self assert: method layers isEmpty.
	self assert: method isBase.
	self assert: method method class == CompiledMethod.
	self assert: method method = (self compile: self baseCode).