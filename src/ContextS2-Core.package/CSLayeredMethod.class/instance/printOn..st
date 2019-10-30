printing
printOn: aStream
	
	| methodCount |
	super printOn: aStream.

	methodCount := self partialMethods size + self includesBaseMethod asBit.
	aStream
		nextPutAll: ', ';
		nextPutAll:  methodCount asString;
		nextPutAll: ' version'.
	methodCount > 1 ifTrue: [aStream nextPut: $s].