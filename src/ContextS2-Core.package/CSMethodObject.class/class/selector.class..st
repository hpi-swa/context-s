instance creation
selector: aSymbol class: aClass
	
	^ self new
		selector: aSymbol;
		methodClass: aClass;
		yourself