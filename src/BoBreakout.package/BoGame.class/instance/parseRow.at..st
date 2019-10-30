level loading
parseRow: aString at: aYCoordinate

	| point |	
		
	point := self left @ aYCoordinate.
	aString do: [ :char | 
		(self blocks isValidBlockTypeCharacter: char) 
			ifTrue: [ self blocks addBlockAt: point as: char ].
		((self blocks isValidBlockTypeCharacter: char) or: [char = Character space])
			ifTrue: [ point := (point x + BoBlock scope x) @ point y ]]