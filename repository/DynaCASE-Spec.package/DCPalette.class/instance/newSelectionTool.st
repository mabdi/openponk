private
newSelectionTool
	| item tool |
	item := self addItem.
	(tool := DCSelectionTool new) palette: self.
	item
		label: 'Select';
		action: [ self selectItem: item tool: tool ];
		icon: Smalltalk ui icons dcSelectIcon