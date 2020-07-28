Class {
	#name : #OPRTAnchorConstraintTest385,
	#superclass : #OPRTAnchorConstraintTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPRTAnchorConstraintTest385 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPRTAnchorConstraintTest385 >> testConnectionSegmentsFor_amp [
	"I test correctness of: 

- `^ minDistance` in method: `OPRTAnchorConstraint >> #minDistance` when {#minDistance->0}

- `^ element` in method: `OPRTAnchorConstraint >> #element`

- `^ anchorShape` in method: `OPRTAnchorConstraint >> #anchorShape`

- `^ edge` in method: `OPRTAnchorConstraint >> #edge`

- `^ balance` in method: `OPRTAnchorConstraint >> #balance` when {#balance->0}

"

	<madeBySmallAmp>
	| segments |
	expected := {(RTLineSegment from: 0 @ (source height / 2) to: 0 @ 50).
	(RTLineSegment from: 0 @ 50 to: 50 @ 100).
	(RTLineSegment from: 50 @ 100 to: (100 - (target width / 2)) @ 100)}.
	segments := connectionAnchor connectionSegmentsFor: connection.
	self
		assert: connectionAnchor minDistance equals: 0;
		assert: connectionAnchor element class equals: RTElement;
		assertEmpty: connectionAnchor element incomingEdges;
		assert: connectionAnchor edge class equals: RTEdge;
		assert: connectionAnchor balance equals: 0
]

{ #category : #'as yet unclassified' }
OPRTAnchorConstraintTest385 >> testConnectionSegmentsFor_amp_A1 [
	"I test correctness of: 

- `^ self segments segmentWithPointFor: self balance` in method: `OPRTAnchorConstraint >> #anchorSegment`

"

	<madeBySmallAmp>
	| segments aCollection |
	expected := {(RTLineSegment from: 0 @ (source height / 2) to: 0 @ 50).
	(RTLineSegment from: 0 @ 50 to: 50 @ 100).
	(RTLineSegment from: 50 @ 100 to: (100 - (target width / 2)) @ 100)}.
	aCollection := connectionAnchor
		connectionSegmentsFor: connection;
		anchorSegment.
	self assert:
		aCollection class equals: Array
]

{ #category : #'as yet unclassified' }
OPRTAnchorConstraintTest385 >> testConnectionSegmentsFor_amp_A6 [
	"I test correctness of: 

- `^ minDistance sign > 0
	ifTrue: [ normals max ]
	ifFalse: [ normals max negated ]` in method: `OPRTAnchorConstraint >> #computeExtraDistance` when {#minDistance->0. #normals->#(25.0 25.0 25.0 25.0)}

"

	<madeBySmallAmp>
	| segments aNumber |
	expected := {(RTLineSegment from: 0 @ (source height / 2) to: 0 @ 50).
	(RTLineSegment from: 0 @ 50 to: 50 @ 100).
	(RTLineSegment from: 50 @ 100 to: (100 - (target width / 2)) @ 100)}.
	aNumber := connectionAnchor
		connectionSegmentsFor: connection;
		computeExtraDistance.
	self assert: aNumber equals: -25.0
]
