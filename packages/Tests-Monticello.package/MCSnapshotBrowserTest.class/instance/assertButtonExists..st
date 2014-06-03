asserting
assertButtonExists: aString
	self assert: (self buttonMorphs anySatisfy: [:m | m label = aString])