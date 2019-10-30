message list
messageHelpFor: aMethodReference
	"Show the first n lines of the sources code of the message behind aSelector."
	
	| source formatted iconHelp |
	Preferences balloonHelpInMessageLists ifFalse: [^ nil].

	source := aMethodReference source.
	source lineCount > 5 ifTrue: [
		| sourceLines |
		sourceLines := (source asString lines copyFrom: 1 to: 5) asOrderedCollection.
		sourceLines add: ' [...]'.
		source := sourceLines joinSeparatedBy: Character cr].

	formatted := SHTextStylerST80 new
		classOrMetaClass: self selectedClassOrMetaClass;
		styledTextFor: source asText.
	iconHelp := (self messageIconHelpFor: aMethodReference selector) ifNotEmpty: [:t | 
		t , Character cr, Character cr].
	^ iconHelp asText
		append: formatted;
		yourself