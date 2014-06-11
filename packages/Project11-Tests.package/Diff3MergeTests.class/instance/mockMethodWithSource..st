helpers
mockMethodWithSource: aString
	^ MCMethodDefinition
		className: 'Diff3MergeTestClassA'
		classIsMeta: false
		selector:  #abc
		category: 'as yet unclassified'
		timeStamp: ''
		source: aString