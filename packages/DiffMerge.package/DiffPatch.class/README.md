A DiffPatch has a collection of DiffChunks, and a collection of corresponding SequenceableCollection snippets. It can be used to patch a file (= SequenceableCollection) forwards or backwards.

Instance Variables
	chunks:		<SequenceableCollection of DiffChunk->DiffChunk>
	snippets:	<SequenceableCollection of SequenceableCollection->SequenceableCollection>
