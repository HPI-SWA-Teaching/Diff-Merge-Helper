text morphs
newRemoteTextMorphFor: aDiff3BlockUIWrapper 
	aDiff3BlockUIWrapper
		remoteTextMorph: (self
				newTextMorphWith: aDiff3BlockUIWrapper
				textSelector: #remote
				acceptSelector: nil
				target: aDiff3BlockUIWrapper diff3Block
				actionSelector: #chooseRemote).
	self setTextPropertiesFor: aDiff3BlockUIWrapper remoteTextMorph
		basedOn: aDiff3BlockUIWrapper remote.
	^ aDiff3BlockUIWrapper remoteTextMorph