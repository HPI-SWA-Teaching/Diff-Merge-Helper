accessing
ancestorSource
	^ ancestor ifNil: [nil] ifNotNil: [ancestor source]