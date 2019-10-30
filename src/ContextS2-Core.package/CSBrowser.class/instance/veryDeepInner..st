superclass hooks
veryDeepInner: deepCopier
	"Adapt super to deal with actual methods, hence duplicated code"

super veryDeepInner: deepCopier.
"selectedMessageReference 	:= selectedMessageReference	clone has the old value. we share it"
