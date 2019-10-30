drag and drop
dropOnMessageCategories: method at: index

	method isContextSMethod ifTrue: [| targetClass |
		targetClass := self selectedClassOrMetaClass.
		(targetClass == method methodClass)
			ifTrue: [| category |
				category := self messageCategoryList at: index.
				category = ClassOrganizer allCategory ifTrue: [^ false].
				targetClass organization classify: method asSymbol under: category.
				^ true]
			ifFalse: [^ self inform: 'Can only move partial methods within a class']].
	^ super dropOnMessageCategories: method at: index