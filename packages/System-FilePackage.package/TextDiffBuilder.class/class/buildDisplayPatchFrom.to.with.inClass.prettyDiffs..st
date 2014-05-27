instance creation
buildDisplayPatchFrom: sourceText to: destinationText with: ancestorText inClass: sourceClass prettyDiffs: prettyDiffs
	1 halt.
	"Replace here"
	Transcript show: 'local: ', sourceText; cr; show: 'ancestor: ', ancestorText; cr; show: 'target:', destinationText; cr.
	
	^((sourceClass notNil and: [ prettyDiffs ])
		ifFalse: [ self from: sourceText to: destinationText ]
		ifTrue: [
			PrettyTextDiffBuilder
				from: sourceText
				to: destinationText
				inClass: sourceClass ]) buildDisplayPatch