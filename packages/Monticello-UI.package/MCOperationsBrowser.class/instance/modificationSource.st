text
modificationSource
	"todo: avoid breaking law of demeter"
	^ selection ifNil: [''] ifNotNil: [ selection isConflict ifTrue: [ selection operation modification source ] ifFalse: [ '' ] ] 