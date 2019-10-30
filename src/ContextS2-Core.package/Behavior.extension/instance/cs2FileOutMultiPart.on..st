*contexts2-core
cs2FileOutMultiPart: aCollectionOfStrings on: stream
	
	stream nextPut: $!; cr.
	aCollectionOfStrings
		do: [ :str | self cs2FileOutPart: str on: stream ].
	stream nextPut: $!; cr.