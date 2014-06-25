running
testFooBar3: aNumber
	aNumber = 6
		ifTrue: [self testFooBar2]
		ifFalse: [self testFooBar].
	"fix me later"
	^ aNumber + 10