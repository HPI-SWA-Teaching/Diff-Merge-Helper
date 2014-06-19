text morphs
chooseColorFor: aString 
	^ aString
		ifNil: [Diff3Constants noContentColor]
		ifNotNil: [Diff3Constants noConflicColor]