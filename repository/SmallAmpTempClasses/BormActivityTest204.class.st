Class {
	#name : #BormActivityTest204,
	#superclass : #BormActivityTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
BormActivityTest204 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
BormActivityTest204 >> testRemoveAllCommunications2_amp [
	"I test correctness of: 

- `^ communications copy` in method: `BormActivity >> #communications`

- `^ true` in method: `BormActivity >> #isActivity`

"

	<madeBySmallAmp>
	receiver removeAllCommunications.
	self
		assert: receiver communications class equals: OrderedCollection;
		assert: receiver isActivity
]
