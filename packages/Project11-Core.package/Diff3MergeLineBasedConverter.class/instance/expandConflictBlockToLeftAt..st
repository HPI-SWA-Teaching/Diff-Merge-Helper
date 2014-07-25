conversion
expandConflictBlockToLeftAt: anIndex
	| lineStartBlockIndex |
	lineStartBlockIndex := self findLineStartToLeftFrom: anIndex.
	(lineStartBlockIndex < anIndex)
		ifTrue: [^ self combineBlocksOnLeftSideFrom: lineStartBlockIndex to: anIndex]
		ifFalse: [^ self lineBasedBlocks at: anIndex]