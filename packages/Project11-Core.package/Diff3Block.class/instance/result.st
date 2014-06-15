result
result
	^ self customizedResult
		ifNil: [(self sourceFrom: self choice) ifNil: ['']]
		ifNotNil: [self customizedResult]
	