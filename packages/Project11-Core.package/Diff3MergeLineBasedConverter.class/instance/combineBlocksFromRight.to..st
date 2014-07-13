as yet unclassified
combineBlocksFromRight: start to: end
	| local ancestor remote blocksToRemove startIndex endIndex |
	local := nil.
	ancestor := nil.
	remote := nil.
	blocksToRemove := OrderedCollection new.
	startIndex := start.
	endIndex := end.
	self splitBlockFromLeft: end.
	startIndex to: endIndex do:
		[:i |
		(self lineBasedBlocks at: i) isConflict
			ifTrue: [
				local := self append: (self lineBasedBlocks at: i) local to: local.
				ancestor := self append: (self lineBasedBlocks at: i) ancestor to: ancestor.
				remote := self append: (self lineBasedBlocks at: i) remote to: remote]
			ifFalse: [local := self append: (self lineBasedBlocks at: i) result to: local.
				ancestor := self append: (self lineBasedBlocks at: i) result to: ancestor.
				remote := self append: (self lineBasedBlocks at: i) result to: remote].
		blocksToRemove add: (self lineBasedBlocks at: i)].
	blocksToRemove removeFirst.
	blocksToRemove do:
		[:block | self lineBasedBlocks remove: block].
	^ Diff3ConflictBlock local: local ancestor: ancestor remote: remote