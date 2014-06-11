result
sourceFrom: aSelector
	aSelector ifNil: [^ '<CONFLICT>'].
	(aSelector = #local) ifTrue: [^ self local].
	(aSelector = #ancestor) ifTrue: [^ self ancestor].
	(aSelector = #remote) ifTrue: [^ self remote]
		ifFalse: [self error: 'Unknown selector: ', aSelector]