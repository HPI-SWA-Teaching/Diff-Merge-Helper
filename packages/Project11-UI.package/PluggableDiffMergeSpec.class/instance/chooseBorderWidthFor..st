text morphs
chooseBorderWidthFor: aString 
	^ aString
		ifNil: [Diff3Constants noContentBorderWidth]
		ifNotNil: [Diff3Constants noConflicBorderWidth]