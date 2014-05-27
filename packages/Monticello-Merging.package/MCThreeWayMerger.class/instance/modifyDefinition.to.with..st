as yet unclassified
modifyDefinition: baseDefinition to: targetDefinition with: ancestorDefinition

	index
		definitionLike: ancestorDefinition
		ifPresent: [:other | other = ancestorDefinition
								ifTrue: [self addOperation: (MCModification of: baseDefinition to: targetDefinition with: ancestorDefinition)]
								ifFalse: [other = targetDefinition
											ifFalse: [self addConflictWithOperation:
														(MCModification of: other to: targetDefinition with: ancestorDefinition)]]]
		ifAbsent: [self addConflictWithOperation: (MCAddition of: targetDefinition)]