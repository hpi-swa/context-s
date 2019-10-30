*contexts2-core
cs2FileOutOn: stream
	
	self cs2FileOutPart: self definition on: stream.
	self methodDict keysAndValuesDo: [ :selector :meth |
		self cs2FileOutMethod: meth called: selector of: self on: stream ].