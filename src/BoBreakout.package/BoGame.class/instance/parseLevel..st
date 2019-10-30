level loading
parseLevel: aNumber

	| stream posY |
	
	posY := self top.
	stream := self loadLevelFile: aNumber.
	[ stream atEnd ] whileFalse: [
		self parseRow: (stream upTo: Character cr) at: posY.
		posY := posY + BoBlock scope y ].
	
	stream close
	