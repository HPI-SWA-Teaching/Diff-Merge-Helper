create
fromBase: baseSnapshot target: targetSnapshot ancestor: ancestorSnapshot
1 halt. "FALSCH"
	^ self new initializeWithAncestor: baseSnapshot target: targetSnapshot local: ancestorSnapshot