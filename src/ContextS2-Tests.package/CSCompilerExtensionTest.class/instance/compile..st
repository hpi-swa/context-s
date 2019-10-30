testing
compile: aSourceCodeString
	"This does not add the method to the class."
	
	| methodAndNode |
	methodAndNode := CSClassA
		compile: aSourceCodeString
		notifying: nil
		trailer: (self class defaultMethodTrailer)
		ifFail: [self error: 'cannot compile test source: ', aSourceCodeString].
	self deny: (CSClassA methodDict includes: self generatedSelector).
	^ methodAndNode method