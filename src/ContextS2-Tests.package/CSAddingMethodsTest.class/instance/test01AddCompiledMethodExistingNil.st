testing
test01AddCompiledMethodExistingNil
	
	self addMethodFrom: self baseCode.
	self assert: self generatedMethod class == CompiledMethod.