Class {
	#name : #OPBormCommunicationControllerTest89,
	#superclass : #OPBormCommunicationControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPBormCommunicationControllerTest89 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormCommunicationControllerTest89 >> testCannotConnectByDefault_amp_A1 [
	"I test correctness of: 

- `^ OPInteractiveLine new
	lineBuilder: [ :fromFigure :toFigure | 
		OPRTStyledConnection new
			decorate: [ :deco | deco arrowHead ];
			withBorderAttachPoint;
			color: Color darkGray muchDarker;
			edgeFrom: fromFigure to: toFigure ];
	from: source figure` in method: `OPBormCommunicationController >> #connectionFeedback`

"

	<madeBySmallAmp>
	| anOPInteractiveLine |
	anOPInteractiveLine := controller
		model: model;
		connectionFeedback.
	self assert:
		anOPInteractiveLine class equals: OPInteractiveLine
]

{ #category : #'as yet unclassified' }
OPBormCommunicationControllerTest89 >> testCreateModel_amp [
	"I test correctness of: 

- `^ super elementsToShowInside , model dataFlows` in method: `OPBormCommunicationController >> #elementsToShowInside`

"

	<madeBySmallAmp>
	controller createModelIn: targetController model.
	self assert: controller elementsToShowInside class equals: Array
]
