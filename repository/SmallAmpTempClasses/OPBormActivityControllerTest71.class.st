Class {
	#name : #OPBormActivityControllerTest71,
	#superclass : #OPBormActivityControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPBormActivityControllerTest71 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormActivityControllerTest71 >> testCannotConnectByDefault_amp [
	"I test correctness of: 

- `^ super dependentElements , model communications` in method: `OPBormActivityController >> #dependentElements`

"

	<madeBySmallAmp>
	controller model: model.
	self
		assert: controller dependentElements class
		equals: OrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormActivityControllerTest71 >> testModelClass_amp_A0 [
	"I test correctness of: 

- `^ BormActivityFigure` in method: `OPBormActivityController >> #figureClass`

"

	<madeBySmallAmp>
	| aClass |
	aClass := controller
		modelClass;
		figureClass.
	self assert:
		aClass class equals: BormActivityFigure class
]
