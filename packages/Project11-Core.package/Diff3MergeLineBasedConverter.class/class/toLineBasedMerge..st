as yet unclassified
toLineBasedMerge: aDiff3Merge
	^ self new
		merge: aDiff3Merge;
		lf: Character cr;
		transformToLineBasedMerge.