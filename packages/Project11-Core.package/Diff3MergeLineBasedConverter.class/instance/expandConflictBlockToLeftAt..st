as yet unclassified
expandConflictBlockToLeftAt: anIndex
	| lineStartBlockIndex |
	lineStartBlockIndex := self findLineStartFrom: anIndex.
	(lineStartBlockIndex < anIndex)
		ifTrue: [^ self combineBlocksFrom: lineStartBlockIndex to: anIndex]
		ifFalse: [^ self lineBasedBlocks at: anIndex]