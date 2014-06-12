accessing
textMorphFor: aSymbol
	(aSymbol = #local) ifTrue: [^ self localTextMorph].
	(aSymbol = #remote) ifTrue: [^ self remoteTextMorph].
	(aSymbol = #final) ifTrue: [^ self finalTextMorph]
		ifFalse: [self error: 'Unkown selector: ', aSymbol]