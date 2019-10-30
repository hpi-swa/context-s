loading
compileTexturesToClassSide
	"load all textures first:
	((FileDirectory default directoryNamed: 'BoBreakout') directoryNamed: 'figures') fileNames do: [:ea | p loadTexture: (ea copyReplaceAll: '.png' with: '')].
	"
	self textures keysAndValuesDo: [:name :file |
		self class class compile: name, '
		^ ', file storeString].