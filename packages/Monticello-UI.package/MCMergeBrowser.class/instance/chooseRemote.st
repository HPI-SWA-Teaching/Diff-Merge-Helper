as yet unclassified
chooseRemote
	self conflictSelectionDo:
		[selection chooseRemote.
		self changed: #text; changed: #list].
	self selectNextUnresolvedConflict