building
update: anObject
	| merge |
	(anObject = #selection) ifTrue: 
		[morph removeAllMorphs.
		merge := self model perform: self getMerge.
		merge ifNotNil: 
			[merge blocks do: [:block | morph addMorphBack: (self buildPanelFor: block with: builder)]]]