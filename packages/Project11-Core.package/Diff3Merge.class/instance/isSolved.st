testing
isSolved
	^ self blocks allSatisfy: [:block | block isConflict not or: [block isSolved]]