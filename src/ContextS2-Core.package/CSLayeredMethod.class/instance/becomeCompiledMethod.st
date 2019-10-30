queries
becomeCompiledMethod
	"This restores the consistency of this object, if it is not layered anymore. First check, if the receiver is still inside its class' methodDict.
	Then, if we have any partial method left, put it's CompiledMethod in the methodDict; else, just delete the slot.
	If this is called while #isLayered returns true, some of the partial methods will just get lost."
	
	self isConsistent ifFalse: [^ self].
	self includesAnyPartialMethod ifFalse: [
			self methodClass methodDict removeKey: self selector ifAbsent: ["nothing"]].
	self compiledMethodReplacement ifNotNil: [ :compiledMethod |
		self methodClass methodDict
			at: self selector
			put: compiledMethod ].