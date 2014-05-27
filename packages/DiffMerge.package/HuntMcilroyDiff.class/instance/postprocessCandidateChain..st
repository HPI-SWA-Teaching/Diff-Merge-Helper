private
postprocessCandidateChain: candidates 
	| result c |
	result := OrderedCollection new.
	c := candidates at: candidates size.
	[ c chain notNil ] whileTrue: 
		[ result add: c file1index -> c file2index.
		c := c chain ].
	^ result reversed.
