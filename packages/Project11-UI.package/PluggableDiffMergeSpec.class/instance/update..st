updating
update: anObject
	anObject = #selection
		ifTrue: [self rebuildPanel]