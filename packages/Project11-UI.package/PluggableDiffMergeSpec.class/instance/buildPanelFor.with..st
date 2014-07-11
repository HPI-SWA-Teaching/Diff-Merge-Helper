building
buildPanelFor: aDiff3Block with: builder
	| panel wrapper |
	panel := self newRowPanelWith: builder.
	wrapper := Diff3BlockUIWrapper wrap: aDiff3Block.
	panel addMorphBack: (self newLocalTextMorphFor: wrapper).
	panel addMorphBack: (self newResultTextMorphFor: wrapper).
	panel addMorphBack: (self newRemoteTextMorphFor: wrapper).
	wrapper updateResultTextMorphColor.
	^ panel