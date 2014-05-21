as yet unclassified
printFromMerge: aDiff3Merge
	|merge|
	merge := aDiff3Merge.
	
	merge do: [: dict |
	(dict key = #ok) ifTrue: [
		Transcript show: 'OK-Blocks: '; cr.
		dict value do: [: symbol |
			Transcript show: symbol
		].
	] ifFalse:[
		Transcript show: 'Conflict-Blocks: '; cr.
		Transcript show: 'Links: '; cr.
		Transcript show: dict value left; cr.
		Transcript show: 'Original '; cr.
		Transcript show: dict value original; cr.
		Transcript show: 'Rechts '; cr.
		Transcript show: dict value right; cr.
	].
].