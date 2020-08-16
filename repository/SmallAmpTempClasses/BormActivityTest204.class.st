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
	self assert: receiver communications class equals: OrderedCollection.
	self assert: receiver communications size equals: 1.
	self
		assert: (receiver communications at: 1) class
		equals: BormCommunication.
	self assert: (receiver communications at: 1) constraint isNil.
	self
		assert: (receiver communications at: 1) receiver class
		equals: BormActivity.
	self
		assert: (receiver communications at: 1) constraints class
		equals: Array.
	self assertEmpty: (receiver communications at: 1) constraints.
	self
		assert: (receiver communications at: 1) allEntities class
		equals: Set.
	self
		assert: (receiver communications at: 1) dataFlows class
		equals: OrderedCollection.
	self assertEmpty: (receiver communications at: 1) dataFlows.
	self
		assert: (receiver communications at: 1) target class
		equals: BormActivity.
	self deny: (receiver communications at: 1) hasConstraint.
	self
		assert: (receiver communications at: 1) entity class
		equals: BormEntity.
	self
		assert: (receiver communications at: 1) source class
		equals: BormActivity.
	self
		assert: (receiver communications at: 1) sender class
		equals: BormActivity.
	receiver removeAllCommunications.
	self
		assert: receiver communications class equals: OrderedCollection;
		assert: receiver isActivity.
	self assert: receiver communications class equals: OrderedCollection.
	self assertEmpty: receiver communications
]
