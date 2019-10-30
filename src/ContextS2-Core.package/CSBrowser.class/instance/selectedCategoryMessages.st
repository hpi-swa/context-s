accessing
selectedCategoryMessages

	^ self classOrMetaClassOrganizer
		ifNil: [#()]
		ifNotNil: [:organizer | 
			organizer listAtCategoryNamed: self selectedMessageCategoryName]