message list
baseMethodsFrom: aList

	^ (aList select: [:method | method isContextSMethod])
		select: [:method | method isBase]