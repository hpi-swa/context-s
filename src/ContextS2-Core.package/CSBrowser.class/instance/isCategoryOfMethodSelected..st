testing
isCategoryOfMethodSelected: aMethodReference

	| selectedMessages |
	selectedMessages := self selectedCategoryMessages.
	^ (selectedMessages includes: aMethodReference selector)
		or: [selectedMessages includesAnyOf: 
			((self allLayeredMethods: aMethodReference)
				collect: [:partial | partial compiledMethod asSymbol])]
