as yet unclassified
applyTo: anObject
"chooseRemote: nil = nimm merged, true: nimm komplettes Remote, false: nimm komplettes Local"
	self isResolved ifFalse: [self error: 'Cannot continue until this conflict has been resolved'].
	chooseRemote ifTrue: [operation applyTo: anObject].
	chooseRemote ifNil: [
		operation modification source: 'testFooBar2
		hhohohohohohoh'. "(operation merge resultSource)."
		operation applyTo: anObject.].
