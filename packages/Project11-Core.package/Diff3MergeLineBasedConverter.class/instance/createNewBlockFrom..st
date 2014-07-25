conversion
createNewBlockFrom: codeHolder 
	^ Diff3ConflictBlock
		local: codeHolder local
		ancestor: codeHolder ancestor
		remote: codeHolder remote