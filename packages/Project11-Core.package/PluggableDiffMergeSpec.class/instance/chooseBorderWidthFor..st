text morphs
chooseBorderWidthFor: aString 
	^ aString
		ifNil: [Diff3BlockUIWrapper noContentBorderWidth]
		ifNotNil: [Diff3BlockUIWrapper noConflicBorderWidth]