message list
sourceStringPrettifiedAndDiffed
	"Adapt super to deal with actual methods, hence duplicated code"
	"Answer a copy of the source code for the selected message, transformed by diffing and pretty-printing exigencies"

	| methodRef class selector sourceString |
	methodRef := self selectedMessageReference ifNil: [^'error'].
	class := methodRef actualClass.
	selector := methodRef selector.
	sourceString := methodRef source.
	self validateMessageSource: sourceString forSelector: selector inClass: class.
	(#(#prettyPrint #prettyDiffs) 
		includes: contentsSymbol) 
			ifTrue: 
				[sourceString := class prettyPrinterClass 
							format: sourceString
							in: class
							notifying: nil].
	self showingAnyKindOfDiffs 
		ifTrue: [sourceString := self diffFromPriorSourceFor: sourceString].
	^sourceString