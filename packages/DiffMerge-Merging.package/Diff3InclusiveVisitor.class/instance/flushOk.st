as yet unclassified
flushOk
	okLines isEmpty ifFalse: [
		result add: #ok -> okLines asArray.
		okLines := OrderedCollection new].