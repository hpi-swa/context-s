layer list
selectedLayerIndex: anInteger
	
	self selectedLayerSymbol: (self contextLayerList at: anInteger ifAbsent: []).
	self
		changed: #selectedLayerIndex;
		changed: #contextLayerList;
		changed: #messageCategoryList;
		changed: #relabel;
		contentsChanged;
		messageCategoryListIndex: 1. "Select the --all-- category, deselect messages."