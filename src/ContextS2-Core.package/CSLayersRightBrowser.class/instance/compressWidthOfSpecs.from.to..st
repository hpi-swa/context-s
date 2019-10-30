toolbuilder
compressWidthOfSpecs: specs from: aFraction to: anotherFraction

	^ specs collect: [:assoc || frame |
		frame := assoc key isRectangle
					ifTrue: [LayoutFrame fractions: assoc key] ifFalse: [assoc key].
		frame rightFraction: frame rightFraction / aFraction * anotherFraction.
		frame leftFraction: frame leftFraction / aFraction * anotherFraction.
		frame -> assoc value].
