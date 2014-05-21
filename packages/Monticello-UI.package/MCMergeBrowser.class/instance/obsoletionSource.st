text
obsoletionSource
	"todo: avoid breaking law of demeter"
	^ selection ifNil: [''] ifNotNil: [ selection isConflict ifTrue: [ selection operation obsoletion source ] ifFalse: [ '' ] ] 