accessing
allMethods

	^ self selectedClassOrMetaClass
		ifNil: [#()]
		ifNotNil: [:theClass |
			(theClass methodDict values
				collect: [:each | each methodReference])
				sort: [:a :b | a selector <= b selector]]
