building
buildPanelFor: aDiff3Block with: builder
	| panel textMorphFinal textMorphLocal textMorphRemote |
	panel := self newPanelWith: builder.
	textMorphLocal := (self newTextSpecWith: builder) buildWith: builder.
	textMorphFinal := (self newTextSpecWith: builder) buildWith: builder.
	textMorphRemote := (self newTextSpecWith: builder) buildWith: builder.
	panel addMorphBack: (textMorphLocal setText: (self nilToEmpty: aDiff3Block local); yourself).
	panel addMorphBack: (textMorphFinal setText: (self nilToEmpty: aDiff3Block result); yourself).
	panel addMorphBack: (textMorphRemote setText: (self nilToEmpty: aDiff3Block remote); yourself).		
	^ panel