text morphs
chooseColorFor: aString 
	^ aString
		ifNil: [Diff3BlockUIWrapper noContentColor]
		ifNotNil: [Diff3BlockUIWrapper noConflicColor]