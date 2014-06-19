accessing
textMorphFor: aSymbol
	(aSymbol = #local) ifTrue: [^ self localTextMorph].
	(aSymbol = #remote) ifTrue: [^ self remoteTextMorph].
	(aSymbol = #final) ifTrue: [^ self resultTextMorph]
		ifFalse: [self error: 'Unkown selector: ', aSymbol]