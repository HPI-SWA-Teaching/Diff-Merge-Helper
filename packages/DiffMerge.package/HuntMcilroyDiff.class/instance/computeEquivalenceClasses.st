private
computeEquivalenceClasses
	| result |
	result := Dictionary new.
	file2 withIndexDo: 
		[ :line :index | 
		(result 
			at: line
			ifAbsentPut: [ OrderedCollection new ]) add: index ].
	^ result