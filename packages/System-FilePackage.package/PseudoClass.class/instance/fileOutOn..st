fileIn/fileOut
fileOutOn: aStream
	"FileOut the receiver"
	self fileOutDefinitionOn: aStream.
	metaClass ifNotNil:[metaClass fileOutDefinitionOn: aStream].
	self fileOutMethods: self selectors on: aStream.
	metaClass ifNotNil:[metaClass fileOutMethods: metaClass selectors on: aStream].