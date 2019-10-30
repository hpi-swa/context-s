*contexts2-core
deactivateLayersInCurrentProcess
	
	| layerNames activeLayers |
	layerNames := self collect: #layerName.
	activeLayers := Processor activeProcess csInfo activeLayers.
	^ Processor activeProcess csInfo activeLayers: (activeLayers copyWithoutAll: self)