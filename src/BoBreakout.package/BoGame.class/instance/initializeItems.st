initialization
initializeItems

	self items: (BoItemDropper newWith: self).
	self balls items: self items