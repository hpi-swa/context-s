private
subclassedLayerNamed: aSymbol ifPresent: thereBlock ifAbsent: notThereBlock
	
	^ self allSubclasses
		detect: [ :cl | cl globalLayerName = aSymbol ]
		ifFound: thereBlock
		ifNone: notThereBlock