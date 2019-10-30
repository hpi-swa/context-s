ui
selectedMessageCategoryName
	"Be tolerant, when messageCategoryListIndex is too big."
	
	self messageCategoryListIndex = 0 ifTrue: [ ^ nil ].
	^ self messageCategoryListIndex <= self messageCategoryList size
		ifTrue: [ self messageCategoryList at: self messageCategoryListIndex ]