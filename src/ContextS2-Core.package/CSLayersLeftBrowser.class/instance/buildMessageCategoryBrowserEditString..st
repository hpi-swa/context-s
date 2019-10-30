ui
buildMessageCategoryBrowserEditString: aString
	"Copied from superclass, changed to integrate with other functionality of this class (Correctly select the index of the selected message category)."

	"Create and schedule a message category browser for the currently 
	selected	 message category. The initial text view contains the characters 
	in aString."
	"wod 6/24/1998: set newBrowser classListIndex so that it works whether the
	receiver is a standard or a Hierarchy Browser."

	| newBrowser |
	self messageCategoryListIndex ~= 0
		ifTrue: 
			[newBrowser := Browser new.
			newBrowser metaClassIndicated: metaClassIndicated.			
			newBrowser systemCategoryListIndex: (newBrowser systemCategoryList indexOf: self selectedSystemCategoryName).
			newBrowser classListIndex: (newBrowser classList indexOf: self selectedClassName).
			newBrowser messageCategoryListIndex: (newBrowser messageCategoryList indexOf: self selectedMessageCategoryName).
			self selectedMessageName ifNotNil: [
				newBrowser messageListIndex: (newBrowser messageList indexOf: self selectedMessageName) ].

			self class openBrowserView: (newBrowser openMessageCatEditString: aString)
				label: 'Message Category Browser (' , 
						newBrowser selectedClassOrMetaClassName , ')']