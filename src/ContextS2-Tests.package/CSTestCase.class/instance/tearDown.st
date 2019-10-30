running
tearDown
	"This throws an assertion-error, if one of the method-instances becomes inconsistent."
	
	self checkConsistencyEachTest ifTrue: [
		[ CSMethodObject checkAllInstances ]
			on: Exception do: [ :e |
				Transcript cr; show: 'Inconsistency after test (in ', self class name , '): ', e, '. Trying to fix inconsistency.'.
				CSMethodObject fixAllInstances ] ].