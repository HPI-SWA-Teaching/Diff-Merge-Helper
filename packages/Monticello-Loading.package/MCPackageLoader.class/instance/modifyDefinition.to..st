patch ops
modifyDefinition: old to: new
1 halt.
	self addDefinition: new.
	obsoletions at: new put: old.