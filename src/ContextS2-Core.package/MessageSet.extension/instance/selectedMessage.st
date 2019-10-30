*contexts2-core-message list-override
selectedMessage
	"Answer the source method for the currently selected message."
	"overridden to use method references"
	(self selection isKindOf: MethodReference)
		ifTrue: [| source |
			[currentCompiledMethod := self selection compiledMethod.
			source := self selection source.
			^ source asText makeSelectorBoldIn: self selection actualClass] on: Error do: []].
		
	"--- BEGIN SQUEAK CORE CODE ---"
	self setClassAndSelectorIn: [:class :selector | | source | 
		class ifNil: [^ 'Class vanished'].
		selector first isUppercase ifTrue:
			[selector == #Comment ifTrue:
				[currentCompiledMethod := class organization commentRemoteStr.
				^ class comment].
			selector == #Definition ifTrue:
				[^ class definition].
			selector == #Hierarchy ifTrue: [^ class printHierarchy]].
		source := class sourceMethodAt: selector ifAbsent:
			[currentCompiledMethod := nil.
			^ 'Missing'].

		self showingDecompile ifTrue: [^ self decompiledSourceIntoContents].

		currentCompiledMethod := class compiledMethodAt: selector ifAbsent: [nil].
		self showingDocumentation ifTrue: [^ self commentContents].

	source := self sourceStringPrettifiedAndDiffed.
	^ source asText makeSelectorBoldIn: class]