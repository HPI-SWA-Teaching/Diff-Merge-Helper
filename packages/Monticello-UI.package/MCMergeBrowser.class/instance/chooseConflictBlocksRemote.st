as yet unclassified
chooseConflictBlocksRemote

	self conflictSelectionDo: [
			self currentDiff3Merge blocks do: [:block|
				block isConflict ifTrue: [block chooseRemote]]
	].
	self changed: #text; changed: #list.