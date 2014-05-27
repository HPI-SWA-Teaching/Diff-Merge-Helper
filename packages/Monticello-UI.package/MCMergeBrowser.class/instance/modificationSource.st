text
modificationSource

	"todo: avoid breaking law of demeter"
	^ selection ifNil: [''] ifNotNil: [ (selection isConflict or: [selection isModification]) ifTrue: [ selection operation toSource ] ifFalse: [ '' ] ] 