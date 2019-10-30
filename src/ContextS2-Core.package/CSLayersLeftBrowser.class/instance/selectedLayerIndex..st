ui-layers
selectedLayerIndex: anObject
	
	selectedLayerIndex := anObject.
	self messageCategoryListIndex: 1. "First just reset the variable, later do the real updates."
	self messageListIndex: 0.
	self
		changed: #selectedLayerIndex;
		changed: #contextLayerList;
		changed: #messageCategoryList;
		changed: #relabel;
		contentsChanged;
		messageCategoryListIndex: 1. "Select the --all-- category, deselect messages."