printing
printLayersOn: stream
	
	self layers
		do: [ :each | stream nextPutAll: each ]
		separatedBy: [ stream nextPut: Character space ].