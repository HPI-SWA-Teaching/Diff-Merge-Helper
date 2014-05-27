as yet unclassified
isTrueConflictBetween: left and: right
	"A conflict is 'false' when, from a particular ancestral snippet, both the left and right branches have changed to have the same contents. In some circumstances this can be treated as a clean merge; in others, it's actually an exception that needs to be dealt with. See http://revctrl.org/AccidentalCleanMerge."
	left length = right length ifFalse: [^true].
	(left extractFrom: (files at: #left)) = (right extractFrom: (files at: #right)) ifFalse: [^true].
	^false