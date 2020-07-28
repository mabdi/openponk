Class {
	#name : #OPRTElementsConstraintTest90,
	#superclass : #OPRTElementsConstraintTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPRTElementsConstraintTest90 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPRTElementsConstraintTest90 >> testChangingExtent_amp_L4 [
	"I test correctness of: 

- `^ conformingShape
	extent: originShape encompassingRectangle extent + aPoint` in method: `OPRTElementsConstraint class >> #changeExtentOf:like:plus:`

"

	<madeBySmallAmp>
	| aTRBoxShape |
	aTRBoxShape := OPRTElementsConstraint
		changeExtentOf: conformingShape
		like: originShape
		plus: 0 @ -5.
	self assert:
		aTRBoxShape class equals: TRBoxShape.
	originShape extent: 0 @ 0.
	OPRTElementsConstraint
		changeExtentOf: conformingShape
		like: originShape
		plus: 0 @ 0
]
