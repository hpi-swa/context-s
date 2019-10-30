accessing
remainingLifes

	^ remainingLifes ifNil: [ remainingLifes := self class lifes ]