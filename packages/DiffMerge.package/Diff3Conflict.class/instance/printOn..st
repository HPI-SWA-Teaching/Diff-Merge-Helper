as yet unclassified
printOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' new left: '.
	left printOn: aStream.
	aStream nextPutAll: '; original: '.
	original printOn: aStream.
	aStream nextPutAll: '; right: '.
	right printOn: aStream.
	aStream nextPut: $).