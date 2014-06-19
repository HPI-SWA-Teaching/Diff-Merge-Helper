accessing
sourceText
	self ancestorSource
		ifNil: [^ super sourceText]
		ifNotNil: [^ (self isClassPatch
				ifTrue: [ClassDiffBuilder]
				ifFalse: [TextDiffBuilder])
				buildDisplayPatchFrom: self fromSource
				to: self toSource
				with: self ancestorSource]