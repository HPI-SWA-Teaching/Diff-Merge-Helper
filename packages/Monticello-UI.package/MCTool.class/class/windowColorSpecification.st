window color
windowColorSpecification

	^ WindowColorSpec 
		classSymbol: self name 
		wording: 'Monticello Tool' 
		brightColor:  (Color r: 0.627 g: 0.69 b: 0.976)
		pastelColor: (Color r: 0.65 g: 0.753 b: 0.976) paler
		helpMessage: 'A Tool Window for the Monticello VCS'