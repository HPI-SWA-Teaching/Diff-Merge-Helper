instance creation
wrap: aDiff3Block local: aLocalTextMorph final: aFinalTextMorph remote: aRemoteTextMorph

	^ self new
		diff3Block: aDiff3Block;
		localTextMorph: aLocalTextMorph;
		finalTextMorph: aFinalTextMorph;
		remoteTextMorph: aRemoteTextMorph;
		yourself