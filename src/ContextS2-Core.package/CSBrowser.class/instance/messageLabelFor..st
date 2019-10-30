message list
messageLabelFor: aMethodReference
	| selector label categoryMessages |
	selector := aMethodReference compiledMethod asSymbol.
	label := aMethodReference isPartial
		ifFalse: [selector]
		ifTrue: [String streamContents: [:stream |
			aMethodReference compiledMethod printOn: stream]].
	categoryMessages := self selectedCategoryMessages.
	categoryMessages isEmptyOrNil ifTrue: [^label].
	
	^ (categoryMessages includes: selector)
		ifTrue: [label]
		ifFalse: [
			"We have a method that is not in the current category but in view due to Contexts.
			Gray it out"
			label asText addAttribute: TextColor gray; yourself]
