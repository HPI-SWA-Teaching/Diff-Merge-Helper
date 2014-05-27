as yet unclassified
left: left original: original right: right
	(self isTrueConflictBetween: left and: right)
		ifTrue: [super left: left original: original right: right]
		ifFalse: [self side: #left chunk: left]
