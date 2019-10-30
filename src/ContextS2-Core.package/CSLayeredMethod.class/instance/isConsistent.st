queries
isConsistent

	^ self methodClass methodDict
		at: self selector
		ifPresent: [:cm | cm == self]
		ifAbsent: [false]