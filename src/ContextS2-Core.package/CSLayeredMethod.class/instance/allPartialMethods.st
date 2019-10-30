queries
allPartialMethods
	"Return the partial methods in this layered method, inclusive the base-method.
	Returned collection may not be modified, as the internal partial-method-collection may be returned without copying."
	
	^ self includesBaseMethod
		ifTrue: [ self partialMethods copyWith: baseMethod ]
		ifFalse: [ self partialMethods ]