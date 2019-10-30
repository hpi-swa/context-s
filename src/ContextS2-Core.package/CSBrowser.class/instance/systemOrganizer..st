superclass hooks
systemOrganizer: aSystemOrganizer
	"Adapt super to deal with actual methods, hence duplicated code"

	selectedMessageReference := nil.
	messages := nil.
	super systemOrganizer: aSystemOrganizer
