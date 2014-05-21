A Diff3Hunk represents a change from the ancestor to either the left or the right branch as part of a three-way merge.

Instance Variables
	newChunk:	<DiffChunk> The new content chunk
	oldChunk:	<DiffChunk> The old (ancestral) content chunk
	side:		<Symbol> Either #left or #right
