accessing
addPartialMethod: aPartialMethod

	aPartialMethod ifNil: [ ^ self ].
	aPartialMethod isBase
		ifTrue: [ baseMethod := aPartialMethod ]
		ifFalse: [
			(self hasConflictsWithPartialMethod: aPartialMethod) ifFalse: [
				self partialMethods
					remove: aPartialMethod ifAbsent: [ "nothing" ];
					add: aPartialMethod ]].
	self flushCache.