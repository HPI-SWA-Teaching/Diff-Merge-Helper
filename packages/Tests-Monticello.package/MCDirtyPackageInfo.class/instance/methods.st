as yet unclassified
methods
	^ MCMockClassA selectors
		select: [:ea | ea beginsWith: 'ordinal']
		thenCollect:
			[:ea | 
				MethodReference 
					class: MCMockClassA 
					selector: ea].