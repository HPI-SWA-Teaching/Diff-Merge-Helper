running
test03Diff3Block
	| blocks |
	blocks := self createDiff3Merge blocks.
	self 
		deny: (blocks at: 1) isConflict;
		assert: (blocks at: 2) isConflict;
		deny: (blocks at: 2) isCleanConflict;
		deny: (blocks at: 3) isConflict;	
		deny: (blocks at: 4) isConflict;
		deny: (blocks at: 5) isConflict;
		assert: (blocks at: 6) isConflict;
		assert: (blocks at: 6) isCleanConflict;
		deny: (blocks at: 7) isConflict.
	self 
		assert: (blocks at: 1) ancestor equals: 'Das ist ein ';
		assert: (blocks at: 2) ancestor equals: 'Text';
		assert: (blocks at: 2) local equals: 'Stuff';
		assert: (blocks at: 2) remote equals: 'Kram';		
		assert: (blocks at: 3) ancestor equals: '
	geht ';	
		assert: (blocks at: 4) remote equals: 'doch ';
		assert: (blocks at: 5) ancestor equals: 'über mehrere Zeilen';		
		assert: (blocks at: 6) ancestor equals: '';
		assert: (blocks at: 6) local equals: '1';
		assert: (blocks at: 6) remote equals: '1';		
		assert: (blocks at: 7) ancestor equals: '.'