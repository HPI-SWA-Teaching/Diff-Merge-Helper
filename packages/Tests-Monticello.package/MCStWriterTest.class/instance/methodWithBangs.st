testing
methodWithBangs
	^ '
	^ ReadStream on: 
''MCRevisionInfo packageName: ''MonticelloCompatibilityTest''!!
MCOrganizationDeclaration categories: 
  #(
  ''Tests-Monticello-Mocks'')!!

MCClassDeclaration
  name: #MCMockClassD
  superclassName: #Object
  category: #''Tests-Monticello-Mocks''
  instVarNames: #()
  comment: ''''!!

MCMethodDeclaration className: #MCMockClassD selector: #one category: #''as yet unclassified'' timeStamp: ''cwp 7/8/2003 21:21'' source: 
''one
	^ 1''!!
''
'
