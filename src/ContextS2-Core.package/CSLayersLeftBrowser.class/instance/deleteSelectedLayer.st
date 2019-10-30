ui-actions
deleteSelectedLayer
	"When the layer is deleted, we delete all partial methods on it.
	If the partial method was the last one in its LayeredMethod, we delete the LayeredMethod <??>"
	
	self selectedLayer delete.
	self selectedLayerIndex: 0.