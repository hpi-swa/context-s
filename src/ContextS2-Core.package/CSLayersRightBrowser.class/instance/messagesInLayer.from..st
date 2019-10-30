message list
messagesInLayer: aSymbol from: aList

	^ (aList select: [:method | method isContextSMethod])
		select: [:method | method layers includes: self selectedLayerSymbol]