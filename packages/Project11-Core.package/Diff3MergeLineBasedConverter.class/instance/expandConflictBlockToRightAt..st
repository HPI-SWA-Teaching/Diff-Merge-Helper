conversion
expandConflictBlockToRightAt: anIndex
	| lineStartBlockIndex block |
	block := self lineBasedBlocks at: anIndex.
	(block ancestor size > 0) and: [(block ancestor last = self lf) ifTrue: [^ block]].
	lineStartBlockIndex := self findLineStartToRightFrom: anIndex.
	(anIndex < lineStartBlockIndex)
		ifTrue: [^ self combineBlocksOnRightSideFrom: anIndex to: lineStartBlockIndex]
		ifFalse: [^ block]