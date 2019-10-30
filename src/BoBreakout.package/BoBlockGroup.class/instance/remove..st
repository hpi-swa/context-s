removing
remove: aMorph

	super remove: aMorph.
	self ifEmpty: [ self game finishLevel ]