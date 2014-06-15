as yet unclassified
applyTo: anObject
"chooseRemote: nil = nimm merged, true: nimm komplettes Remote, false: nimm komplettes Local"
	"self isResolved ifFalse: [self error: 'Cannot continue until this conflict has been resolved']."
	chooseRemote ifNil: [
		operation modification source:(operation merge resultSource).
		operation applyTo: anObject.]
	ifNotNil: [chooseRemote ifTrue: [operation applyTo: anObject]]
