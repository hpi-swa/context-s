*contexts2-core-private-override
initializeMessageList: anArray
	"Initialize my messageList from the given list of MethodReference or string objects.  NB: special handling for uniclasses."
	"overridden to avoid re-creating method references."
	
	messageList := OrderedCollection new.
	anArray do: [ :each |
		"--- BEGIN OVERRIDE CHANGE ---"
		(each isKindOf: MethodReference)
			ifTrue: [| class sel s |
				class := each actualClass.
				sel := each selector.
				class ifNotNil: [class isUniClass
								ifTrue:
									[s := class typicalInstanceName, ' ', sel]
								ifFalse:
									[s := class name , ' ' , sel , ' {' , 
										((class organization categoryOfElement: sel) ifNil: ['']) , '}'].
					each stringVersion: s.
					messageList add: each]]
			ifFalse: [
		"--- END OVERRIDE CHANGE ---"
				MessageSet 
					parse: each  
					toClassAndSelector: [ :class :sel | | s |
						class ifNotNil:
							[class isUniClass
								ifTrue:
									[s := class typicalInstanceName, ' ', sel]
								ifFalse:
									[s := class name , ' ' , sel , ' {' , 
										((class organization categoryOfElement: sel) ifNil: ['']) , '}'].
							messageList add: (
								MethodReference new
									setClass: class  
									methodSymbol: sel 
									stringVersion: s)]]]].
	messageListIndex := messageList isEmpty ifTrue: [0] ifFalse: [1].
	contents := ''