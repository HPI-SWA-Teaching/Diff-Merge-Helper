as yet unclassified
diffMergeTool: aSymbol

	| diffMerge |
	diffMerge := PluggableDiffMergeSpec new.
	diffMerge 
		model: tool;
		getMergeSelector: aSymbol;
		frame: currentFrame.
	window children add: diffMerge.