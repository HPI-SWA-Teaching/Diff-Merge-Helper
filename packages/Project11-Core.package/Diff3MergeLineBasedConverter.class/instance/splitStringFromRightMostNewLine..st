conversion
splitStringFromRightMostNewLine: aString
	| parts splitIndex |
	parts := OrderedCollection new.
	splitIndex := aString lastIndexOf: self lf.
	(splitIndex = aString size)
		ifTrue: [parts add: aString.
			parts add: '']
		ifFalse: [parts add: (aString copyFrom: 1 to: splitIndex).
			parts add: (aString copyFrom: splitIndex + 1 to: aString size)].
	^ parts