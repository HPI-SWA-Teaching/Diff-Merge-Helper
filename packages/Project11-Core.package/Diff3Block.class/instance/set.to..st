accessing
set: aSelector to: aValue
	(aSelector = #local) ifTrue: [^ self local: aValue].
	(aSelector = #ancestor) ifTrue: [^ self ancestor: aValue].
	(aSelector = #remote) ifTrue: [^ self remote: aValue]
		ifFalse: [self error: 'Unknown selector: ', aSelector]