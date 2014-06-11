text
diff3Merge
	^ self selectionIsConflicted
		ifTrue: [selection operation merge]
		ifFalse: [nil]