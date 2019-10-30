accessing
messages

	^ messages ifNil: [messages := self allMethods]