asserting
assertAListIncludes: anArrayOfStrings
	self assert: (self listMorphs 
			anySatisfy: [:m | m getList includesAllOf: anArrayOfStrings]).