conversion
findLineStartToLeftFrom: anIndex 
	(1 to: anIndex - 1)
		reverseDo: [:i | (self blockContainsNewLine: i)
				ifTrue: [^ i]].
	^ 0