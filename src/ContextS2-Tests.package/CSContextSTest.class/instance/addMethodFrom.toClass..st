running
addMethodFrom: aSourceCodeString toClass: aClass
	| changeStamp |
	changeStamp := (Utilities respondsTo: #changeStamp)
				ifTrue: [Utilities changeStamp]
				ifFalse: [Smalltalk at: #Author ifPresent: [:A | A changeStamp] ifAbsent: ['unknown']].
	aClass
		compile: aSourceCodeString
		classified: 'partial methods generated during tests'
		withStamp: changeStamp
		notifying: nil.
	self assert: (aClass methodDict includesKey: self generatedSelector).