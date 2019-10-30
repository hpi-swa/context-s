Tools
browseVersions

	^ [super browseVersions]
		on: Error
		do: [:e | self inform: 'Sorry. Only actual methods can show versions'].