as yet unclassified
mergePatch

	^ mergePatch ifNil: [mergePatch := version snapshot patchRelativeToBase: self packageSnapshot with: self ancestorSnapshot]