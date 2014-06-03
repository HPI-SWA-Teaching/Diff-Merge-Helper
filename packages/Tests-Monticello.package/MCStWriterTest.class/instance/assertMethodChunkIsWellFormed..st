asserting
assertMethodChunkIsWellFormed: chunk
	self class newParser
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: false
		notifying: nil
		ifFail: [self assert: false]