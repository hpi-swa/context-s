superclass hooks
metaClassIndicated: trueOrFalse 
	"Adapt super to deal with actual methods, hence duplicated code"

	selectedMessageReference := nil.
	messages := nil.
	super metaClassIndicated: trueOrFalse.