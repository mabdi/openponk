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
	self assert: segments class equals: Array.
	self assert: segments size equals: 3.
	self assert: (segments at: 1) class equals: RTLineSegment.
	self assert: (segments at: 1) left equals: 0 @ 50.
	self deny: (segments at: 1) isHorizontal.
	self assert: (segments at: 1) right equals: 0 @ 50.
	self assert: (segments at: 1) from equals: 0.0 @ 15.
	self assert: (segments at: 1) to equals: 0 @ 50.
	self assert: (segments at: 1) isVertical.
	self assert: (segments at: 1) bottom equals: 0.0 @ 15.
	self assert: (segments at: 1) top equals: 0 @ 50.
	self assert: (segments at: 2) class equals: RTLineSegment.
	self assert: (segments at: 2) left equals: 0 @ 50.
	self deny: (segments at: 2) isHorizontal.
	self assert: (segments at: 2) right equals: 50 @ 100.
	self assert: (segments at: 2) from equals: 0 @ 50.
	self assert: (segments at: 2) to equals: 50 @ 100.
	self deny: (segments at: 2) isVertical.
	self assert: (segments at: 2) bottom equals: 0 @ 50.
	self assert: (segments at: 2) top equals: 50 @ 100.
	self assert: (segments at: 3) class equals: RTLineSegment.
	self assert: (segments at: 3) left equals: 50 @ 100.
	self assert: (segments at: 3) isHorizontal.
	self assert: (segments at: 3) right equals: 85 @ 100.0.
	self assert: (segments at: 3) from equals: 50 @ 100.
	self assert: (segments at: 3) to equals: 85 @ 100.0.
	self deny: (segments at: 3) isVertical.
	self assert: (segments at: 3) bottom equals: 85 @ 100.0.
	self assert: (segments at: 3) top equals: 85 @ 100.0
]

{ #category : #'as yet unclassified' }
OPRTAnchorConstraintTest385 >> testConnectionSegmentsFor_amp_A1 [
	"I test correctness of: 

- `^ self segments segmentWithPointFor: self balance` in method: `OPRTAnchorConstraint >> #anchorSegment`

"

	<madeBySmallAmp>
	| segments aCollection |
	aCollection := connectionAnchor anchorSegment.
	self assert: aCollection class equals: Array.
	self assert: aCollection size equals: 2.
	self assert: (aCollection at: 1) class equals: RTLineSegment.
	self assert: (aCollection at: 1) left equals: 0 @ 50.
	self deny: (aCollection at: 1) isHorizontal.
	self assert: (aCollection at: 1) right equals: 0 @ 50.
	self assert: (aCollection at: 1) from equals: 0.0 @ 15.
	self assert: (aCollection at: 1) to equals: 0 @ 50.
	self assert: (aCollection at: 1) isVertical.
	self assert: (aCollection at: 1) bottom equals: 0.0 @ 15.
	self assert: (aCollection at: 1) top equals: 0 @ 50.
	self assert: (aCollection at: 2) equals: 0.0 @ 15.0
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
