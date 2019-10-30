ui-layers
buildContextLayerListWith: builder
	
	^ builder pluggableListSpec new
		model: self;
		list: #contextLayerList;
		getIndex: #selectedLayerIndex;
		setIndex: #selectedLayerIndex:;
		menu: #contextLayerMenu:;
		keyPress: #arrowKey:from:;
		yourself