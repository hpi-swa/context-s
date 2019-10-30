testing
test02AddCompiledMethodExistingCompiledMethod
	
	| compiledMethod |
	self addMethodFrom: self baseCode.
	compiledMethod := self generatedMethod.
	self addMethodFrom: self baseCode.
	self deny: self generatedMethod == compiledMethod.