updating
updateFinalTextMorphColor
	| color |
	color := self diff3Block isConflict
		ifTrue: [self diff3Block isSolved
			ifTrue: [self class solvedConflictColor]
			ifFalse: [self class unsolvedConflictColor]]
		ifFalse: [self class noConflicColor].
	self finalTextMorph color: color