self-updating
reformulateList

	| newOnes |
	newOnes := self allMethods.
	self messages size ~= newOnes size
		ifTrue: [
			self okToChange ifFalse: [^ self].
			self messages: newOnes.
			self selectedMessageReference ifNotNil: [:ref |
				self selectedMessageReference: (newOnes
					detect: [:ea | ea = ref]
					ifFound: [:newRef | newRef]
					ifNone: [nil])]].