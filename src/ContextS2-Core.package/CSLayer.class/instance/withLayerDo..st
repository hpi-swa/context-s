layer handling
withLayerDo: aBlock
	"Pass the call on to the name-symbol. TODO in future, the functionality should be replaced here, in the Layer-class."
	
	^ self layerName withLayerDo: aBlock