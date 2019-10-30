superclass hooks
selectMessageCategoryNamed: aSymbol 
	"Given aSymbol, select the category with that name.  Do nothing if 
	aSymbol doesn't exist."

	| contentsNeedChange newMessageList deselectMessage |
	contentsNeedChange := false.
	newMessageList := aSymbol = ClassOrganizer allCategory 
		ifTrue: [self messages collect: [:ref |  ref selector]]
		ifFalse: [self classOrMetaClassOrganizer listAtCategoryNamed: aSymbol].
	deselectMessage := (newMessageList includes: self selectedMessageName) not.
	(deselectMessage or: [aSymbol isNil]) ifTrue: [
		contentsNeedChange := true.
		selectedMessageName := nil.
		selectedMessageReference := nil].

	selectedMessageCategoryName := aSymbol.
	
	self changed: #messageCategorySelectionChanged.
	self changed: #messageCategoryListIndex. "update my selection"
	self changed: #messageList.
	contentsNeedChange ifTrue: [
		self editSelection: (aSymbol notNil
			ifTrue: [#newMessage]
			ifFalse: [self hasClassSelected
				ifTrue: [#editClass]
				ifFalse: [#newClass]]).
		contents := nil.
		self contentsChanged].