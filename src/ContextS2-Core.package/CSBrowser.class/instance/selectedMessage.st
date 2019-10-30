message list
selectedMessage
	"Answer a copy of the source code for the selected message."

	contents == nil ifFalse: [^ contents copy].

	self showingDecompile ifTrue:
		[^ self decompiledSourceIntoContents].

	self selectedClassOrMetaClass ifNil: [^ ''].
	currentCompiledMethod := self selectedMessageReference
		ifNil: [^ '']
		ifNotNil: [:ref | ref compiledMethod].	"method deleted while in another project"

	^ contents := (self showingDocumentation
		ifFalse: [ self sourceStringPrettifiedAndDiffed ]
		ifTrue: [ self commentContents ])
			copy asText makeSelectorBoldIn: self selectedClassOrMetaClass