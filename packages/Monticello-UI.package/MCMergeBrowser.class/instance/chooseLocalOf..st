as yet unclassified
chooseLocalOf: aBlock

	(aBlock local notNil or: [aBlock remote notNil]) ifTrue:
		[aBlock chooseLocal].