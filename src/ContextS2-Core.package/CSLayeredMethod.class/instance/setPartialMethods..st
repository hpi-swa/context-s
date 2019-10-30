accessing
setPartialMethods: aCollection
	"Only for internal use."
	
	partialMethods := aCollection.
	self flushCache.