conversion
expandConflictBlockAt: anIndex 
	| oldBlock blockExpandedToLeft blockExpandedToLeftAndRight |
	anIndex isZero	ifTrue: [^ nil].
	oldBlock := self lineBasedBlocks at: anIndex.
	blockExpandedToLeft := self expandConflictBlockToLeftAt: anIndex.
	blockExpandedToLeft
		ifNotNil: [self replace: oldBlock with: blockExpandedToLeft].
	blockExpandedToLeftAndRight := self expandConflictBlockToRightAt:
		(self lineBasedBlocks indexOf: blockExpandedToLeft).
	blockExpandedToLeftAndRight
		ifNotNil: [self replace: blockExpandedToLeft with: blockExpandedToLeftAndRight]