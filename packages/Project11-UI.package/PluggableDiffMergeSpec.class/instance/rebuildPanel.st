updating
rebuildPanel
	| merge |
	morph removeAllMorphs.
	merge := self model perform: self getMergeSelector.
	merge ifNotNil: 
		[merge blocks
			do: [:block | morph addMorphBack: (self buildPanelFor: block with: builder)]]