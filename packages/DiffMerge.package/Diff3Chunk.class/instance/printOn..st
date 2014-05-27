as yet unclassified
printOn: aStream
	aStream nextPut: $(.
	super printOn: aStream.
	aStream
		nextPutAll: ' side: ';
		nextPutAll: side printString;
		nextPut: $).