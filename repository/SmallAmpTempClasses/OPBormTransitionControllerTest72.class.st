Class {
	#name : #OPBormTransitionControllerTest72,
	#superclass : #OPBormTransitionControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPBormTransitionControllerTest72 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormTransitionControllerTest72 >> testCannotConnectByDefault_amp_A1 [
	"I test correctness of: 

- `^ OPInteractiveLine new
	lineBuilder: [ :fromFigure :toFigure | 
		OPRTStyledConnection new
			decorate: [ :deco | deco arrowHead ];
			withBorderAttachPoint;
			color: Color darkGray muchDarker;
			edgeFrom: fromFigure to: toFigure ];
	from: source figure` in method: `OPBormTransitionController >> #connectionFeedback`

"

	<madeBySmallAmp>
	| anOPInteractiveLine |
	anOPInteractiveLine := controller
		model: model;
		connectionFeedback.
	self assert:
		anOPInteractiveLine class equals: OPInteractiveLine
]
