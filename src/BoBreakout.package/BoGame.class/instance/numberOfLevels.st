level flow
numberOfLevels

	"| levelCount  defaultURI extensionMask |
	defaultURI := 'BoBreakout/levels'.
	extensionMask := '*.lvl'.
	
	levelCount := 0.
	(FileDirectory uri: defaultURI) fileNames do: [ :entry |
		(extensionMask match: entry) ifTrue: [ 
			levelCount := levelCount + 1 ]].
	
	^ levelCount"
	^ self class class selectors count: [:s | ('level#' match: s asString) or: ['level##' match: s asString]]