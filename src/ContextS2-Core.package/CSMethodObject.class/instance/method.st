executing
method
	"Subclasses have to provide real CompiledMethod-objects as substitute for arbitrary messages. If nil is returned, these messages are dropped."
	
	^ self subclassResponsibility