accessing
baseMethod
	"This does NOT return just the instance field, but unpacks the CompiledMethod from the CSPartialMethod."
	
	^ baseMethod ifNotNil: [:base | base method]