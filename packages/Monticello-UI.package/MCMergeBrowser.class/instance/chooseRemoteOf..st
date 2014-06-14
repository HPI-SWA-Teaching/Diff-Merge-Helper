as yet unclassified
chooseRemoteOf: aBlock

	(aBlock remote notNil or: [aBlock local notNil]) ifTrue:
		[aBlock chooseRemote].