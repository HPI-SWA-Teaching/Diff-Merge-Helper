initializing
initializeWithLocal: local target: target ancestor: commonAncestor

	obsoletion := local.
	modification := target.
	ancestor := commonAncestor.
	merge := self createMergeFrom: local remote: target ancestor: commonAncestor