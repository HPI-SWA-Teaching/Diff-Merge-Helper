as yet unclassified
testLoadIntoEnvironment
	[MCPackageLoader installSnapshot: self mockSnapshot] on: EnvironmentRequest do: [:e | e resume: environment].
	self assert: (environment bindingOf: #MCMockClassA) notNil description: 'Environment has no binding for MCMockClassA'.