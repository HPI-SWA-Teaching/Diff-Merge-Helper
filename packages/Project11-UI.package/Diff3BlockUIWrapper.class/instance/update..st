updating
update: aSymbol
	(self updateMap at: aSymbol ifAbsent: [])
		value