as yet unclassified
diffMergeMorph: aSymbol
	| diffMerge |
	diffMerge := PluggableDiffMergeMorph new.
	diffMerge 
		model: tool;
		getText: aSymbol; 
		setText: (aSymbol, ':') asSymbol;
		frame: currentFrame.
	window children add: diffMerge.