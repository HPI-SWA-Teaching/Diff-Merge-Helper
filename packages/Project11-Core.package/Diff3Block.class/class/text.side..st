instance creation
text: aString side: aSelector
	| instance |
	instance := self new.
	(aSelector = #left)
		ifTrue: [instance
				choice: #local;
				local: aString].
	(aSelector = #original)
		ifTrue: [instance
				choice: #ancestor;
				ancestor: aString].
	(aSelector = #right)
		ifTrue: [instance
				choice: #remote;
				remote: aString].
	^ instance
		