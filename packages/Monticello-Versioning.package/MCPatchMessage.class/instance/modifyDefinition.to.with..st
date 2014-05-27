patch operations
modifyDefinition: oldDefinition to: newDefinition with: ancDefinition
	stream nextPutAll: 'M'; tab; nextPutAll: newDefinition summary; cr