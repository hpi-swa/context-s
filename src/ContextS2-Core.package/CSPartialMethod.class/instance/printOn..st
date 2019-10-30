printing
printOn: aStream
	
	aStream
		nextPutAll: self selector;
		nextPutAll: ' ('.
	self isBase
		ifTrue: [ aStream nextPutAll: '<base>' ]
		ifFalse: [ self printLayersOn: aStream ].
	aStream nextPut: $).