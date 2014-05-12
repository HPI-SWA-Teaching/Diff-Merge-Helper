text
modificationSource
	^ selection ifNil: [''] ifNotNil: [ selection operation modification source]