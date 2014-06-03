asserting
denyAListIncludesAnyOf: anArrayOfStrings
	self deny: (self listMorphs 
			anySatisfy: [:m | m getList includesAnyOf: anArrayOfStrings])