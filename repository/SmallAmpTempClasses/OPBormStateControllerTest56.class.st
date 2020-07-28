Class {
	#name : #OPBormStateControllerTest56,
	#superclass : #OPBormStateControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPBormStateControllerTest56 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormStateControllerTest56 >> testModelClass_amp_A0 [
	"I test correctness of: 

- `^ BormStateFigure` in method: `OPBormStateController >> #figureClass`

"

	<madeBySmallAmp>
	| aClass |
	aClass := controller
		modelClass;
		figureClass.
	self assert:
		aClass class equals: BormStateFigure class
]
