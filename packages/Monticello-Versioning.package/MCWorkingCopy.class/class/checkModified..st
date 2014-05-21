as yet unclassified
checkModified: thorough
	"Verify that all working copies with a modified flag are really modified, by comparing them to their stored snapshot. If the 'thorough' argument is true, check all packages, even unmodified ones."
	"MCWorkingCopy checkModified: true"
	| workingCopies |
	workingCopies := self allManagers.
	thorough ifFalse: [
		workingCopies := workingCopies select: [:wc | wc modified]].
	workingCopies do: [:wc | wc checkModified]
		displayingProgress: 'Checking package changes ...' translated.
