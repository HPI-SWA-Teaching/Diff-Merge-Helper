testing
testRevertOldMethod
	| definition changeRecord |
	Object compile: 'yourself ^ self' classified: self mockOverrideMethodCategory.
	definition := (MethodReference class: Object selector: #yourself) asMethodDefinition.
	changeRecord := definition scanForPreviousVersions first.
	self assert: changeRecord notNil.
	self assert: changeRecord category = 'accessing'.
	changeRecord fileIn.