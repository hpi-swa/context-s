ui
classListIndex: aNumber
	
	selectedLayerIndex := 0. "Set the variable first, do all the real updates after the super-call."
	self messageCategoryListIndex: 0.
	super classListIndex: aNumber.
	self selectedLayerIndex: 0.