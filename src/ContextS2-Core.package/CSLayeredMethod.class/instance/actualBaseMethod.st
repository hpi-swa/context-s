accessing
actualBaseMethod
	"returns the compiled method to execute as a base method, with superclass lookup
	 hand optimized for minimal overhead"
	| cm |
	^ baseMethod == nil
		ifFalse: [baseMethod method]
		ifTrue: [(cm := methodClass superclass lookupSelector: selector) == nil
					ifTrue: [nil]
					ifFalse: [cm class == CompiledMethod
								ifTrue: [cm]
								 ifFalse: [cm actualBaseMethod]]]