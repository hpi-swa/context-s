message list
messageList

	^ self messageCategoryListSelection
		ifNil: [self messages]
		ifNotNil: [:selector |
			selector = ClassOrganizer allCategory
				ifTrue: [self messages]
				ifFalse: [self selectedCategoryMethods]]