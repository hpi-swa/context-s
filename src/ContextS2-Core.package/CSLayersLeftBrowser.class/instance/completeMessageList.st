ui-messages
completeMessageList
	
	| messages |
	messages := SortedCollection sortBlock: [ :mt1 :mt2 |
		(mt1 isSymbol ifTrue: [ mt1 ] ifFalse: [ mt1 selector ]) <= (mt2 isSymbol ifTrue: [ mt2 ] ifFalse: [ mt2 selector ]) ].
	(self selectedClassOrMetaClass ifNil: [ ^ #() ]) methodDict
		valuesDo: [ :method |
			method selector ifNotEmpty: [
				(method isKindOf: CSLayeredMethod)
					ifTrue: [ messages addAll: method allPartialMethods ]
					ifFalse: [ messages add: method selector ] ] ].
	^ messages