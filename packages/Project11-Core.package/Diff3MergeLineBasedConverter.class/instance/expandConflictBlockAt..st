as yet unclassified
expandConflictBlockAt: anIndex
	| oldBlock newBlockLeft newBlockRight |
	anIndex isZero ifTrue:[^nil].
	 newBlockLeft := nil.
	newBlockRight:=nil.
	oldBlock := self lineBasedBlocks at: anIndex.
	"previousBlock := self lineBasedBlocks at: anIndex-1 ifAbsent: [nil]."
	"previousBlock ifNotNil: ["
		newBlockLeft := self expandConflictBlockToLeftAt: anIndex
		"]".
	newBlockLeft ifNotNil: [self lineBasedBlocks at: (self lineBasedBlocks indexOf: oldBlock) put: newBlockLeft].
	newBlockRight:=self expandConflictBlockToRightAt: (self lineBasedBlocks indexOf: newBlockLeft).
	"TODO combine left+right"
	newBlockRight ifNotNil: [self lineBasedBlocks at: (self lineBasedBlocks indexOf: newBlockLeft) put: newBlockRight]
	
	