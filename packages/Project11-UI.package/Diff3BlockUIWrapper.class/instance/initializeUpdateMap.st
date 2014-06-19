initialization
initializeUpdateMap
	self updateMap: IdentityDictionary new.
	self updateMap addAll: {
		#localChoosen->[self updateTextMorphs].
		#remoteChoosen->[self updateTextMorphs]}