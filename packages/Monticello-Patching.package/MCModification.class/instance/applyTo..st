accessing
applyTo: anObject
	
	"XXX: Temporary workaround"
	ancestor ifNotNil: [
		anObject modifyDefinition: obsoletion to: modification with: ancestor ]
	ifNil: [
		anObject modifyDefinition: obsoletion to: modification ]