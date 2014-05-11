as yet unclassified
diffLocal: aLocalVersion withRemote: aRemoteVersion
	| snapshot definitions base traget |
	self halt.
	snapshot := aLocalVersion snapshot.
	definitions := snapshot definitions.
	base := MCDefinitionIndex definitions: definitions.
	traget := MCDefinitionIndex definitions: aRemoteVersion snapshot definitions.
	