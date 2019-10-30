message functions
removeMessage
	"Changed to delete only one partial method for ContextS methods."
	| method confirmation |
	self messageListIndex = 0 | self okToChange not ifTrue: [^ self].
	method := self messageObjectsList at: self messageListIndex.
	method isContextSMethod ifFalse: [^ super removeMessage].

	confirmation := self systemNavigation 
							confirmRemovalOf: method selector
							on: self selectedClassOrMetaClass.
	confirmation = 3 ifTrue: [^ self].
	
	(self selectedClassOrMetaClass >> method selector) removePartialMethod: method.
	self changed: #messageList.
	self messageListIndex: 0.
	
	self setClassOrganizer.
	"In case organization not cached"
	confirmation = 2 ifTrue: [self systemNavigation browseAllCallsOn: method selector].