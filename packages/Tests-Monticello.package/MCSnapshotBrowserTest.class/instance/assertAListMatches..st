asserting
assertAListMatches: strings
	| listMorphs |
	listMorphs := self listMorphs.
	self assert: (listMorphs 
		anySatisfy: [:m | | list |
			list := m getList. (list size = strings size) and: [list includesAllOf: strings]])