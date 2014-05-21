private
possiblyNewerVersionsIn: aRepository 
	^ aRepository possiblyNewerVersionsOfAnyOf:
		((self ancestors collect: [:each | each versionName])
			ifEmpty: [Array new]
			ifNotEmpty: [:ancestors | {ancestors detectMax: [:v | v versionNumber ]}])