accessing
default
	"Answer the default tool builder"
	^ Project current uiManager toolBuilder
		ifNil: [self findDefault]