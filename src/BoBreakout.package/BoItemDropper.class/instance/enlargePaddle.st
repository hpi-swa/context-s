items
enlargePaddle

	| imageName |
	imageName := 'enlargePaddle'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			self game paddle extentHorizontallyBy: self class resizeValue ]