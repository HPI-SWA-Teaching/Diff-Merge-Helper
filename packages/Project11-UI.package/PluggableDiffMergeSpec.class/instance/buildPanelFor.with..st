building
buildPanelFor: aDiff3Block with: builder
	| panel wrapper |
	panel := self newRowPanelWith: builder.
	wrapper := Diff3BlockUIWrapper wrap: aDiff3Block.
	panel addMorphBack: (self newLocalTextMorphFor: wrapper).
	self addChooseButtonIfNeededTo: panel with: wrapper forSide: #local.
	panel addMorphBack: (self newResultTextMorphFor: wrapper).
	self addChooseButtonIfNeededTo: panel with: wrapper forSide: #remote.
	panel addMorphBack: (self newRemoteTextMorphFor: wrapper).
	wrapper updateResultTextMorphColor.
	^ panel