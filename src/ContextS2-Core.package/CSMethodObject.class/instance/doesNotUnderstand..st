executing
doesNotUnderstand: aMessage
	"Required for all meta messages that need information from the original method."
	
	^ self method
		ifNil: [ self ] "Cannot pass the message on, simulate behavior of an empty method."
		ifNotNilDo: [ :msg | msg perform: aMessage selector withArguments: aMessage arguments ]