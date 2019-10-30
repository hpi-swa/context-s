*contexts2-core
cs2FileOutPart: aString on: stream
	
	| tokens |
	tokens := aString asString findTokens: '!' keep: '!'.
	tokens do: [ :str |
		stream nextPutAll: 
			(str = '!'
				ifTrue: [ '!!' ]
				ifFalse: [ str ]) ].
	stream nextPut: $!; cr; cr.