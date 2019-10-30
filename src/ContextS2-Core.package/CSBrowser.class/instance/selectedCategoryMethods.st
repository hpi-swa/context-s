accessing
selectedCategoryMethods

	self selectedCategoryMessages isEmptyOrNil
		ifTrue: [
			selectedMessageCategoryName := nil. 
			^ #()].

	^ self messages select: [:method |
		self isCategoryOfMethodSelected: method]
