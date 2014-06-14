as yet unclassified
chooseAllBlocksRemote

	self conflictSelectionDo: [
			self currentDiff3Merge blocks do: [:block|
				self chooseRemoteOf: block]
	].
	self changed: #text; changed: #list.