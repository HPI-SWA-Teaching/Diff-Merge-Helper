building
buildPanelFor: aDiff3Block with: builder
	| panel textMorphFinal textMorphLocal textMorphRemote color |
	panel := self newPanelWith: builder.

	"WARNING: the following code is just a spike"
	textMorphLocal := (PluggableTextMorphPlus on: aDiff3Block text: #local accept: nil)
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color white;
		borderWidth: 1.
	aDiff3Block local ifNil: [textMorphLocal color: Color transparent; borderWidth: 0].
	
	color := Color green.
	aDiff3Block isConflict ifTrue: [color := Color red].
	(aDiff3Block choice = #ancestor) ifTrue: [color := Color white].
	textMorphFinal := (PluggableTextMorphPlus on: aDiff3Block text: #result accept: #customizedResult:)
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: color;
		borderWidth: 1.
		
	textMorphRemote := (PluggableTextMorphPlus on: aDiff3Block text: #remote accept: nil)
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		color: Color white;
		borderWidth: 1.
	aDiff3Block remote ifNil: [textMorphRemote color: Color transparent; borderWidth: 0].

	panel addMorphBack: textMorphLocal.
	panel addMorphBack: textMorphFinal.
	panel addMorphBack: textMorphRemote.
"	panel addMorphBack: (textMorphLocal setText: (self nilToEmpty: aDiff3Block local); yourself).
	panel addMorphBack: (textMorphFinal setText: (self nilToEmpty: aDiff3Block result); yourself).
	panel addMorphBack: (textMorphRemote setText: (self nilToEmpty: aDiff3Block remote); yourself)."
	^ panel