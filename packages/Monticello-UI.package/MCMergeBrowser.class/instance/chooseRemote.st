as yet unclassified
chooseRemote
	2 halt.
	self conflictSelectionDo:
		[selection chooseRemote.
		self changed: #text; changed: #list].
	self selectNextUnresolvedConflict