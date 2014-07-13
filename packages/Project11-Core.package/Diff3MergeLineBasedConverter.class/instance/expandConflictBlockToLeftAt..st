as yet unclassified
expandConflictBlockToLeftAt: anIndex
	| lineStartBlockIndex |
	lineStartBlockIndex := self findLineStartToLeftFrom: anIndex.
	(lineStartBlockIndex < anIndex)
		ifTrue: [^ self combineBlocksFromLeft: lineStartBlockIndex to: anIndex]
		ifFalse: [^ self lineBasedBlocks at: anIndex]