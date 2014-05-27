accessing
sourceText
	self ancestorSource
		ifNil: [^ (self isClassPatch
				ifTrue: [ClassDiffBuilder]
				ifFalse: [TextDiffBuilder])
				buildDisplayPatchFrom: self fromSource
				to: self toSource
				inClass: self targetClass
				prettyDiffs: (Preferences diffsWithPrettyPrint
						and: [self targetClass notNil
								and: [self isClassPatch not]])]
		ifNotNil: [^ (self isClassPatch
				ifTrue: [ClassDiffBuilder]
				ifFalse: [TextDiffBuilder])
				buildDisplayPatchFrom: self fromSource
				to: self toSource
				with: self ancestorSource
				"inClass: self targetClass
			prettyDiffs: (
			Preferences diffsWithPrettyPrint and: [
			self targetClass notNil and: [
			self isClassPatch not ] ])"
			"Preferences are not regarded"]