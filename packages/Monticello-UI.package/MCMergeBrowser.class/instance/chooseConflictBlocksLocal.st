as yet unclassified
chooseConflictBlocksLocal

	self conflictSelectionDo: [
			self currentDiff3Merge blocks do: [:block|
				block isConflict ifTrue: [block chooseLocal]]
	].
	self changed: #text; changed: #list.
