tests
testRedundantMerge
	| base |
	base :=  self snapshot.
	self merge: base.
	
	"This shouldn't throw an exception"
	self merge: base.