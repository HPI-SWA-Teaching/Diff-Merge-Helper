as yet unclassified
expandConflictBlockAt: anIndex
	| previousBlock newBlock oldBlock |
	newBlock := nil.
	oldBlock := self lineBasedBlocks at: anIndex.
	previousBlock := self lineBasedBlocks at: anIndex-1 ifAbsent: [nil].
	previousBlock ifNotNil: [newBlock := self expandConflictBlockToLeftAt: anIndex].
	
	self expandConflictBlockToRightAt: anIndex.
	"TODO combine left+right"
	newBlock ifNotNil: [self lineBasedBlocks at: (self lineBasedBlocks indexOf: oldBlock) put: newBlock]
	