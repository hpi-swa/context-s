positioning
centerHorizontallyOn: aMorph

	self position: (aMorph center x - (self width / 2) ) @ 
					(aMorph bottom - (self height + self class yDistance))