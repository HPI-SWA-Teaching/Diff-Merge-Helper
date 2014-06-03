asserting
assertChunkIsWellFormed: chunk
	self class newParser
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: true
		notifying: nil
		ifFail: [self assert: false]