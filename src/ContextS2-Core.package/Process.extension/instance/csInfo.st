*contexts2-core
csInfo
	"Only the contents of csInfo are accessed, thus no need for a setter in Process"
	
	^ csInfo ifNil: [csInfo := CSProcessContextInformation new]