literals
hasLiteral: literal

	^ self method notNil and: [self method hasLiteral: literal]