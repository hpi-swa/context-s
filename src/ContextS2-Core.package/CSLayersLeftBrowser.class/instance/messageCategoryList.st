ui
messageCategoryList
	
	^ messageCategoryList ifNil: [
		messageCategoryList := SortedCollection with: ClassOrganizer allCategory.
		(self selectedClassOrMetaClass ifNil: [ ^ #() ]) methodDict keysAndValuesDo: [ :key :value |
			(self selectedLayer = self class allLayersMarker
			or: [
			(self selectedLayer = self class nonLayeredMarker)
				ifTrue: [ value class ~= CSLayeredMethod ]
				ifFalse: [
					value class == CSLayeredMethod and: [
						(self selectedLayer = self class baseMethodsMarker
							ifTrue: [ value hasBaseMethod ]
							ifFalse: [ value allInvolvedLayers includes: self selectedLayer ]) ] ] ]
			) ifTrue: [
				(self classOrMetaClassOrganizer categoryOfElement: key)
					ifNotNilDo: [ :category | messageCategoryList addIfNotPresent: category ] ] ].
		messageCategoryList ]