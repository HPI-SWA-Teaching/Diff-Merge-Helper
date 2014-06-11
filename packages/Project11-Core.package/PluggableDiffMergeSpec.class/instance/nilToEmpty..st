building
nilToEmpty: stringOrNil
	^ stringOrNil ifNil: [''] ifNotNil: [stringOrNil]