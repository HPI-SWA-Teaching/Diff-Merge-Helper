morphic
buildWindow

	Smalltalk at: #ToolBuilder ifPresent: [:tb | 
		morph := tb build: model. 
		^self ].
	morph := model buildWindow.