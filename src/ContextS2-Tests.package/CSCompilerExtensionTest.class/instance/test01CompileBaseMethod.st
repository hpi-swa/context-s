testing
test01CompileBaseMethod
	
	self assert: (self compile: self baseCode) class = CompiledMethod.