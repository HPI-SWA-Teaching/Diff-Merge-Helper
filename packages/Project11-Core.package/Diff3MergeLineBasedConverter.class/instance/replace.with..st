conversion
replace: aBlock with: aNewBlock 
	self lineBasedBlocks
		at: (self lineBasedBlocks indexOf: aBlock)
		put: aNewBlock