as yet unclassified
= otherConflict
	^ (otherConflict isKindOf: Diff3Conflict) and:
		[(left = otherConflict left) and:
		[(original = otherConflict original) and:
		[(right = otherConflict right)]]]