Class {
	#name : #OPBormParticipantControllerTest165,
	#superclass : #OPBormParticipantControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPBormParticipantControllerTest165 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPBormParticipantControllerTest165 >> testCannotConnectByDefault_amp [
	"I test correctness of: 

- `^ model nodes , (model nodes flatCollect: [ :each | each outgoing ])` in method: `OPBormParticipantController >> #elementsToShowInside`

"

	<madeBySmallAmp>
	controller model: model.
	self
		assert: controller elementsToShowInside class
		equals: OrderedCollection.
	self
		assert: controller elementsToShowInside class
		equals: OrderedCollection.
	self assertEmpty: controller elementsToShowInside
]

{ #category : #'as yet unclassified' }
OPBormParticipantControllerTest165 >> testModelClass_amp [
	"I test correctness of: 

- `^ elements` in method: `OPBormParticipantController >> #nodeFigures` when {#elements->nil}

"

	<madeBySmallAmp>
	controller modelClass.
	self assert: controller nodeFigures isNil
]
