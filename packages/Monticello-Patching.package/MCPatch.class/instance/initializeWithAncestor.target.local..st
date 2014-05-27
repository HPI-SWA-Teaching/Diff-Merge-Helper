initialize-release
initializeWithAncestor: ancestorSnapshot target: targetSnapshot local: localSnapshot
	| base target local |	
	operations := OrderedCollection new.
	base := MCDefinitionIndex definitions: ancestorSnapshot definitions.
	target := MCDefinitionIndex definitions: targetSnapshot definitions.
	local := MCDefinitionIndex definitions: localSnapshot definitions.

	target definitions do:
		[:t |
		base
			definitionLike: t
			ifPresent: [:b | (b isSameRevisionAs: t) 
				ifFalse: ["HERE"
					local definitionLike: t ifPresent: [:l | 
												"3-way-merge-here"
												operations add: (MCModification of: l to: t with: b)
											] 
											ifAbsent:  ["2-way-merge"
														operations add: (MCModification of: b to: t)]
											]
			]
			ifAbsent: [operations add: (MCAddition of: t)]]
		displayingProgress: 'Diffing...'.
		
	base definitions do:
		[:b |
		target
			definitionLike: b
			ifPresent: [:t]
			ifAbsent: [operations add: (MCRemoval of: b)]]		