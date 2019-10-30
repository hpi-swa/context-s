message list
selectedMessage

	^ (super selectedMessage isEmpty and: [self messageListIndex = 0])
		ifTrue: ['']
		ifFalse: [(self messageObjectsList at: self messageListIndex ifAbsent: [^ '']) getSource]
