as yet unclassified
selectItem: aControllerClass
	selectedItem
		ifNil: [ selectedItem := aControllerClass ]
		ifNotNil: [ 
			selectedItem = aControllerClass
				ifTrue: [ selectedItem := nil ]
				ifFalse: [ selectedItem := aControllerClass ] ]