helpers
mockResultTextMorphOn: t1 
	^ PluggableTextMorphPlus
		on: t1
		text: #result
		accept: #customizedResult:from: