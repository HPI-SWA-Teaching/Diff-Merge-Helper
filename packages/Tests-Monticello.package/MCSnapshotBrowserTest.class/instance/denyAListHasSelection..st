asserting
denyAListHasSelection: aString
	self deny: (self listMorphs 
			anySatisfy: [:m | m selection = aString])