message functions
removeMessage
	"Changed to delete only one partial method for ContextS methods."
	| method confirmation |
	(self selectedMessageReference isNil or: [self okToChange not]) ifTrue: [^ self].
	method := self selectedMessageReference.
	method isContextSMethodReference ifFalse: [
		super removeMessage.
		selectedMessageReference := nil.
		self changed: #selectedMessageReference.
		^ self].

	confirmation := self systemNavigation 
							confirmRemovalOf: method selector
							on: self selectedClassOrMetaClass.
	confirmation = 3 ifTrue: [^ self].
	
	(self selectedClassOrMetaClass >> method selector) removePartialMethod: method compiledMethod.
	self changed: #messageList.
	self selectedMessageReference: nil.
	self selectedMessageName: nil.
	
	self setClassOrganizer.
	"In case organization not cached"
	confirmation = 2 ifTrue: [self systemNavigation browseAllCallsOn: method selector].