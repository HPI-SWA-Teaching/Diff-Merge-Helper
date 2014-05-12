morphic ui
showModally
	modalProcess := Processor activeProcess.
	self window openInWorldExtent: (400@400).
	[self window world notNil] whileTrue: [
		self window outermostWorldMorph doOneCycle.
	].
	morph := nil.
	^ modalValue