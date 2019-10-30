executing
methodChainFor: activeLayers
	"Chain together all partial methods that are currently active.
	Caches by key of activeLayers"

	^ layerDict at: activeLayers ifAbsentPut: [self createMethodChainFor: activeLayers]
