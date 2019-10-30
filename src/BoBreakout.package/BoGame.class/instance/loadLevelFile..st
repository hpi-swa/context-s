level loading
loadLevelFile: aNumber

	"| fileName defaultURI levelExtension |
	defaultURI := 'BoBreakout/levels/level'.
	levelExtension := '.lvl'.
	
	fileName := (FileDirectory uri: defaultURI, aNumber, levelExtension) fullName.
	^ FileStream fileNamed: fileName "
	^ ReadStream on: (self class perform: ('level', aNumber asString) asSymbol)