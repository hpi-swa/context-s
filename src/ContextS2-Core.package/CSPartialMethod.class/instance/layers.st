accessing
layers
	"Answer the value of layer. If it is nil, return an empty array, but DONT set the instance-variable itself!
	The instance variable layer being nil is a marker for this partial-method to be the base-method (see #isBase)."
	
	^ self basicLayers ifNil: [ #() ]