printing
printOn: aStream
	
	aStream
		nextPutAll: self class name;
		nextPutAll: '(';
		nextPutAll: (self methodClass name ifNil: [ '' ]);
		nextPutAll: '>>';
		nextPutAll: (self selector ifNil: [ #'' ]).