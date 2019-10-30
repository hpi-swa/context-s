layer handling
reset
	"Reset the layer-instance. Next time the layer will be accessed, it will result in another object."
	
	^ self class resetLayer: self layerName