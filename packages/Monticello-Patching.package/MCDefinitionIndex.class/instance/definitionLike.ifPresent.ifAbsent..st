as yet unclassified
definitionLike: aDefinition ifPresent: foundBlock ifAbsent: errorBlock
	| definition |
	aDefinition ifNil: [^errorBlock].
	definition := definitions at: aDefinition description ifAbsent: [].
	^ definition
		ifNil: errorBlock
		ifNotNil: [foundBlock value: definition]