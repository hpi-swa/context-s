*contexts2-core
layeredMethods
	
	^ methodDict values select: [:each | each class == CSLayeredMethod]