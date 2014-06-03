as yet unclassified
createCompiledMethod
	| notification |
	[methodAndNode := myClass compile: text asString notifying: requestor
							trailer: myClass defaultMethodTrailer ifFail: [^nil]]
			on: SyntaxErrorNotification do: [:exc |
				notification := exc.
				exc pass].
	notification ifNotNil: [notification newSource ifNotNil: [:newSource | text := newSource]].
	selector := methodAndNode selector.
	compiledMethod := methodAndNode method.
	self writeSourceToLog.
	priorMethodOrNil := myClass compiledMethodAt: selector ifAbsent: [nil].
