message list
selectedMessageName

	^ self selectedMessageReference ifNotNil: [:methodRef | methodRef selector]
