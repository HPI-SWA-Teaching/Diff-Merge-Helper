conversion
splitStringFromLeftMostNewLine: aString
	| parts splitIndex |
	parts := OrderedCollection new.
	splitIndex := aString indexOf: self lf.
	parts add: (aString copyFrom: 1 to: splitIndex).
	parts add: (aString copyFrom: splitIndex + 1 to: aString size).
	^ parts