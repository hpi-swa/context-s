removing
resetLifes

	self removeAll.
	self class startLifes timesRepeat: [ self addLife ]	