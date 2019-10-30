executing
createMethodChainFor: activeLayers
	"Chain together all partial methods that are currently active.
	Chain is ordered in the way the layers have been activated."
	^ OrderedCollection new: activeLayers size + 1 streamContents: [:stream |	
		activeLayers do: [:layer |
			layerDict at: layer ifPresent: [:presentLayer | stream nextPut: presentLayer]].
		self actualBaseMethod ifNotNil: [:base | stream nextPut: base]]
