subclassed layers
instance
	"Singleton-pattern with registration in the global namespace.
	Only for subclasses of CSLayer, CSLayer itself has multiple 'anonymous' instances (which are also registered globally)"

	^ self
		getGlobalInstanceOf: self
		withName: self globalLayerName