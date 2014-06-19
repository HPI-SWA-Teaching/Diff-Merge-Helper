updating
updateResultTextMorphColor
	| color |
	color := self diff3Block isConflict
		ifTrue: [self diff3Block isSolved
			ifTrue: [Diff3Constants solvedConflictColor]
			ifFalse: [Diff3Constants unsolvedConflictColor]]
		ifFalse: [Diff3Constants noConflicColor].
	self resultTextMorph color: color