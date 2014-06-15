as yet unclassified
chooseAllBlocksLocal

	self conflictSelectionDo: [
			self currentDiff3Merge blocks do: [:block|
				self chooseLocalOf: block]
	].
	self changed: #text; changed: #list.