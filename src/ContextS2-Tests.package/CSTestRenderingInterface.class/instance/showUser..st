rendering
showUser: aUser
	
	(self loggedInUser
		ifNil: [ { loggedOutLayer } ]
		ifNotNilDo: [ :loggedInUser |
			loggedInUser isAdmin
				ifTrue: [ { editableLayer } ]
				ifFalse: [ {} ]])
					withLayersDo: [ aUser renderDetails: self getCanvas ].