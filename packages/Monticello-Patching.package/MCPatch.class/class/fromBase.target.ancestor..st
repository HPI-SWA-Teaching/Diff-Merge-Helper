create
fromBase: baseSnapshot target: targetSnapshot ancestor: ancestorSnapshot
	^ self new initializeWithAncestor: baseSnapshot target: targetSnapshot local: ancestorSnapshot