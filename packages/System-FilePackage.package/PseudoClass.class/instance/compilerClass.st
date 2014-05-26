accessing
compilerClass
	^ (Smalltalk at: name ifAbsent: [^ Compiler]) compilerClass