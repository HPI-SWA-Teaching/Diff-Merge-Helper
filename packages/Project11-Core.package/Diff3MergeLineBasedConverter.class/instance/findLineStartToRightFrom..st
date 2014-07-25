conversion
findLineStartToRightFrom: anIndex 
	(anIndex + 1 to: self lineBasedBlocks size)
		do: [:i | (self nonConflictBlockContainsNewline: i)
						ifTrue: [^ i]].
	^ self lineBasedBlocks size + 1