hooks
createEdgeFrom: fromFigure to: toFigure
	| builder edge label sourceMultiplicityLabel targetMultiplicityLabel qualifier |
	^ DCRTCallbackBuilder
		block: [ :view | 
			builder := DCRTEdgeBuilder new.
			edge := builder createLineFrom: fromFigure to: toFigure.
			edge shape filledDiamondHead.
			edge resetShape.
			view add: edge.

			label := builder addLabelNamed: #name to: edge.
			builder constraint: label balance: 0.5 offset: -12.

			sourceMultiplicityLabel := builder addLabelNamed: #sourceMultiplicity to: edge.
			builder constraint: sourceMultiplicityLabel toSourceDistance: 10 offset: 12.

			targetMultiplicityLabel := builder addLabelNamed: #targetMultiplicity to: edge.
			builder constraint: targetMultiplicityLabel toTargetDistance: 10 offset: 12.

			qualifier := builder addLabelNamed: #qualifier to: edge.
			qualifier shape text: 'Q'.
			qualifier update.
			builder constraint: qualifier toTargetDistance: 15 offset: -10.
			edge ]