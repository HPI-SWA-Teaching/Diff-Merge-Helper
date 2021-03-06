asserting
assertNumberWhenSavingTo: aRepository is: aNumber
	| name |
	name := nil.
	[aRepository storeVersion: workingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | name := n suggestedName. n resume: (Array with: name with: '')].
	self assert: name = (self packageName, '-', Utilities authorInitials, '.', aNumber asString)