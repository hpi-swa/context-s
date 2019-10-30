superclass hooks
defineMessageFrom: aString notifying: aController
	"Adapted to deal with layered methods"
	
	"Compile the expressions in aString. Notify aController if a syntax error occurs. Install the compiled method in the selected class classified under  the currently selected message category name. Answer the selector obtained if compilation succeeds, nil otherwise."
	|  messageName selector category oldMessageList selectedClassOrMetaClass |
	messageName := self selectedMessageName.
	oldMessageList := self messageList.
	selectedClassOrMetaClass := self selectedClassOrMetaClass.
	contents := nil.
	selector := (selectedClassOrMetaClass newParser parseSelector: aString).
	(self metaClassIndicated
		and: [(selectedClassOrMetaClass includesSelector: selector) not
		and: [Metaclass isScarySelector: selector]])
		ifTrue: ["A frist-time definition overlaps the protocol of Metaclasses"
				(self confirm: ((selector , ' is used in the existing class system.
Overriding it could cause serious problems.
Is this really what you want to do?') asText makeBoldFrom: 1 to: selector size))
				ifFalse: [^nil]].
	category := messageName
		ifNil: [ self selectedMessageCategoryName ]
		ifNotNil: [ selectedClassOrMetaClass  organization categoryOfElement:  messageName].
	selector := selectedClassOrMetaClass
				compile: aString
				classified: category
				notifying: aController.
	selector == nil ifTrue: [^ nil].
	contents := aString copy.
	selector ~~ messageName
		ifTrue: 
			[category = ClassOrganizer nullCategory
				ifTrue: [self changed: #classSelectionChanged.
						self changed: #classList.
						self messageCategoryListIndex: 1].
			self setClassOrganizer.  "In case organization not cached"
			(oldMessageList includes: selector)
				ifFalse: [
					self messages: nil.
					self changed: #messageList].
			self selectMessageNamed: selector].
	^ selector