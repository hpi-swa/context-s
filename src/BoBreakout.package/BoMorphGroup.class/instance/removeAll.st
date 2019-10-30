removing
removeAll

	self do: [ :morph | self game removeMorph: morph ].
	self morphs removeAll