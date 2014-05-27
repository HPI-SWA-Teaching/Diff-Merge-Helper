instance creation
buildDisplayPatchFrom: sourceText to: destinationText with: ancestorText
|m|
m:=(Diff3 new
		file0: sourceText ;
		file1: destinationText;
		file2:  ancestorText;
		diffClass:HuntMcilroyDiff) merge.
	"Replace here"
"Transcript show: 'local: ', sourceText; cr; show: 'ancestor: ', ancestorText; cr; show: 'target:', destinationText; cr."
	
	"^((sourceClass notNil and: [ prettyDiffs ])
		ifFalse: [ self from: sourceText to: destinationText ]
		ifTrue: [
			PrettyTextDiffBuilder
				from: sourceText
				to: destinationText
				inClass: sourceClass ]) buildDisplayPatch"
			
	^Diff3PrettyPrinter fromMerge: m.