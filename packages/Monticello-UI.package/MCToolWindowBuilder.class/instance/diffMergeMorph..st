as yet unclassified
diffMergeMorph: aSymbol
	| diffMerge |
	diffMerge := PluggableDiffMergeSpec new.
	diffMerge 
		model: tool;
		getMerge: aSymbol;
		"getText: aSymbol; 
		setText: (aSymbol, ':') asSymbol;"
		frame: currentFrame.
	window children add: diffMerge.