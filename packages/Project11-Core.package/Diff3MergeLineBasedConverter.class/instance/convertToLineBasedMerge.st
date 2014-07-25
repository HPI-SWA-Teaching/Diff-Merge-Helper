conversion
convertToLineBasedMerge
	| newMerge conflicts |
	self lineBasedBlocks: self merge blocks copy.
	conflicts := self lineBasedBlocks select: [:block | block isConflict].
	conflicts do:
		[:conflict | self expandConflictBlockAt: (self lineBasedBlocks indexOf: conflict)].
	newMerge := self merge copy.
	newMerge blocks: self lineBasedBlocks.
	^ newMerge