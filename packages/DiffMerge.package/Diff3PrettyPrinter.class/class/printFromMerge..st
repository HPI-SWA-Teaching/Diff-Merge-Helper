printing
printFromMerge: aDiff3Merge 
	| output |
	output := AttributedTextStream new.
	aDiff3Merge
		do: [:dict | (dict key = #ok)
				ifTrue: [output nextPutAll: dict value]
				ifFalse: [output currentAttributes: {TextColor red};
						 nextPutAll: dict value left;
						 currentAttributes: {TextColor green};
						 nextPutAll: dict value original;
						 currentAttributes: {TextColor blue};
						 nextPutAll: dict value right]].
	Transcript show: output contents