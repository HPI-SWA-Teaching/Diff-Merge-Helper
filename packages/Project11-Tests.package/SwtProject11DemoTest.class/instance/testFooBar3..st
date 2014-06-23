running
testFooBar3: aNumber
	
	aNumber = 5
		ifTrue: [self testFooBar2]
		ifFalse: [self testFooBar].
		
	^ aNumber + 10