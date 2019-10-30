initialize-release
metaClassIndicated: aBool
	"This value is set when one of the instance/class buttons is clicked."
	
	selectedLayerIndex := 0.
	super metaClassIndicated: aBool.
	self changed: #contextLayerList.