ui-messages
messageList
	"Select those (partial) methods, that match both the selected category and selected layer."
	
	^ messageList ifNil: [
		messageList := self completeMessageList select: [ :method |
			"First filter the category"
			(self selectedMessageCategoryName isNil
				or: [ self selectedMessageCategoryName = ClassOrganizer allCategory ]
				or: [ (self classOrMetaClassOrganizer categoryOfElement: method asSymbol) = self selectedMessageCategoryName ])
			and: [
			
			"Then the layer"
			self selectedLayer = self class allLayersMarker
			or: [
			(self selectedLayer = self class nonLayeredMarker)
				ifTrue: [ (method isKindOf: CSMethodObject) not ]
				ifFalse: [
					(method isKindOf: CSMethodObject) and: [
						(self selectedLayer = self class baseMethodsMarker)
							ifTrue: [ method isBase ]
							ifFalse: [ method layers includes: self selectedLayer ] ] ] ] ] ] ]