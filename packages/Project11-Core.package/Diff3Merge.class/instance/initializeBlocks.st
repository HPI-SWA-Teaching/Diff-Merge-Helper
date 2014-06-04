initialization
initializeBlocks
	self blocks: OrderedCollection new.
	self mergedIndices do: [:diff3Element | diff3Element accept: self]