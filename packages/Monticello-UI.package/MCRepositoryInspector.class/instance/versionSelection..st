morphic ui
versionSelection: aNumber 
	selectedVersion := version := nil.
	aNumber isZero ifFalse: [ selectedVersion := (self versionList at: aNumber) asString ].
	self
		 changed: #versionSelection ;
		 changed: #summary ;
		 changed: #hasVersion