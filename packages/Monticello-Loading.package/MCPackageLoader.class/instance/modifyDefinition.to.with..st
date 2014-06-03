patch ops
modifyDefinition: old to: new with: anAncestor
	self addDefinition: new.
	obsoletions at: new put: old.