message list - icons
messageIconFor: aMethodReference

	^ self messageIconCache
		at: aMethodReference
		ifAbsentPut: [super messageIconFor: aMethodReference selector]