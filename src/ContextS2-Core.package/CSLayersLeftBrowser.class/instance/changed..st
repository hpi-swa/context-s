initialize-release
changed: aSymbol
	"TODO maybe this is not the right way to get the changed-event of the reicever itself..."
	
	aSymbol caseOf: {
		[ #messageList ] -> [ messageList := nil ].
		[ #messageCategoryList ] -> [ messageCategoryList := nil ].
		[ #contextLayerList ] -> [ contextLayerList := nil ].
	} otherwise: [].
	super changed: aSymbol.