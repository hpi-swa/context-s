accessing
isLayered
	"Returns true, if this layered method currently does anything different than a simple CompiledMethod.
	If false, this layered method should be replaced by an equivalent CompiledMethod.
	This is the case, if there are no partial methods."
	
	^ self partialMethods notEmpty