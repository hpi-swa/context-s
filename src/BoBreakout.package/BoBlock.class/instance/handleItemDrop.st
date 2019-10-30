item dropping
handleItemDrop

	self willDropAnItem ifTrue: [
		self items dropItem: (self itemTypes atRandom) at: (self itemDropPoint) ]