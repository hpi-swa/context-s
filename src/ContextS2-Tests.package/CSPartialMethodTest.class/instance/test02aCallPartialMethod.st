testing
test02aCallPartialMethod
	
	self assert: 2 equals: ((self partialMethodFrom: CSClassB) valueWithReceiver: CSClassB new arguments: #()).