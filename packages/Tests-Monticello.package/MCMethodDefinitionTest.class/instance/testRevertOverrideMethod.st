testing
testRevertOverrideMethod
	| definition |
	self class compile: 'override ^ 2' classified:  '*foobarbaz-override'.
	definition := (MethodReference class: self class selector: #override) asMethodDefinition.
	self assert: definition isOverrideMethod description: 'Method not marked as an override'.
	self assert: 2 equals: self override description: 'Method not overridden'.
	definition unload.
	self assert: 1 equals: self override description: 'Unload didn''t revert method'.
	self assert: 'mocks' equals: (MethodReference class: self class selector: #override) category  description: 'Unload didn''t revert. method classification'.
	