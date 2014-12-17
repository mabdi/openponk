initialization
initializeTree
	tree
		roots: project diagrams;
		doubleClick: [ self doubleClick ];
		menu: [ :menu | self rightClickMenu: menu ];
		displayBlock: [ :anObject | self labelFor: anObject ];
		childrenBlock: [ :anObject | self childrenFor: anObject ];
		iconBlock: [ :anObject | self iconFor: anObject ].
	tree
		expandRoots;
		autoDeselection: false.
	project whenChanged: [ tree updateTree ]