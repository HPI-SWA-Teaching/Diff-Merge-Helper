conversion
nonConflictBlockContainsNewline: anIndex
	^ (self lineBasedBlocks at: anIndex) isConflict not
				and: [self blockContainsNewLine: anIndex]