building
buildPanelFor: aDiff3Block with: builder
	| panel wrapper |
	panel := self newRowPanelWith: builder.
	wrapper := Diff3BlockUIWrapper wrap: aDiff3Block.
	panel
		addMorphBack: (self newLocalTextMorphFor: wrapper);
		addMorphBack: (PluggableButtonMorphPlus new label: '>>'; color: Color white; action: [wrapper chooseLocal]; yourself);
		addMorphBack: (self newFinalTextMorphFor: wrapper);
		addMorphBack: (PluggableButtonMorphPlus new label: '<<'; color: Color white; action: [wrapper chooseRemote]; yourself);
		addMorphBack: (self newRemoteTextMorphFor: wrapper).
	wrapper updateFinalTextMorphColor.
	^ panel