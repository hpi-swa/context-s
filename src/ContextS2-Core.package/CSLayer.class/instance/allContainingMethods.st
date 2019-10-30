queries
allContainingMethods
	"Returns a collection of associations from class to selector."
	
	^ self allContainingLayeredMethods
		collect: [ :layeredMethod | layeredMethod methodClass -> layeredMethod selector ]