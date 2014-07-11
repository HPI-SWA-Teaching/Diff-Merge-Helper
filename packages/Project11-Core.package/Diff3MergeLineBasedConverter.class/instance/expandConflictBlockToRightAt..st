as yet unclassified
expandConflictBlockToRightAt: anIndex
	| lineStartBlockIndex |
	lineStartBlockIndex := self findLineStartToRightFrom: anIndex.
	(anIndex < lineStartBlockIndex)
	"TODO für rechte seite anpassen"
		ifTrue: [^ self combineBlocksFrom: anIndex to: lineStartBlockIndex]
		ifFalse: [^ self lineBasedBlocks at: anIndex]