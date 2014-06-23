running
testFooBar3: aNumber
	aNumber = 6
		ifTrue: [self testFooBar2]
		ifFalse: [self testFooBar].
	^ aNumber + 10