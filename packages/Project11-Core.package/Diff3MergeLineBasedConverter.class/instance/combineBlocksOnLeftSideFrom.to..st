conversion
combineBlocksOnLeftSideFrom: start to: end 
	| startIndex endIndex processedBlocks codeHolder |
	startIndex := start.
	endIndex := end.
	(startIndex isZero not and: [(self lineBasedBlocks at: startIndex) isConflict not])
		ifTrue: [self splitBlockFromRightMostNewLine: startIndex.
					endIndex := endIndex + 1].
	startIndex := startIndex + 1.
	codeHolder := Diff3SourceCodeHolder new.
	processedBlocks := self combineCodeFrom: startIndex to: endIndex storeTo: codeHolder.
	processedBlocks removeLast.
	processedBlocks
		do: [:block | self lineBasedBlocks remove: block].
	^ self createNewBlockFrom: codeHolder