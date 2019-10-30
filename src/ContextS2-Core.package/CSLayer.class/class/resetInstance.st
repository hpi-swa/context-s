subclassed layers
resetInstance
	"Reset the layer-instance of this class. Only applicable for subclasses."
	
	^ self removeGlobalInstanceNamed: self globalLayerName