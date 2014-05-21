private
fileMap
	| files |
	files := Dictionary new.
	files at: #left put: file1.
	files at: #original put: file0.
	files at: #right put: file2.
	^ files