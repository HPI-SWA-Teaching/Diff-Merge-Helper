result
result
	^ self customizedResult
		ifNil: [self sourceFrom: self choice]
		ifNotNil: [self customizedResult]
	