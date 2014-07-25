conversion
combineBlocksOnRightSideFrom: start to: end
	| endIndex codeHolder processedBlocks |
	endIndex := end.
	(endIndex <= self lineBasedBlocks size)
		ifTrue: [self splitBlockFromLeftMostNewLine: endIndex]
		ifFalse: [endIndex := self lineBasedBlocks size].
	codeHolder := Diff3SourceCodeHolder new.
	processedBlocks := self combineCodeFrom: start to: endIndex storeTo: codeHolder.
	processedBlocks removeFirst.
	processedBlocks do:
		[:block | self lineBasedBlocks remove: block].
	^ self createNewBlockFrom: codeHolder