Class {
	#name : #BormCommunicationTest408,
	#superclass : #BormCommunicationTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
BormCommunicationTest408 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
BormCommunicationTest408 >> testAddDataFlow_amp [
	"I test correctness of: 

- `^ constraint ifNil: [ #() ] ifNotNil: [ ^ {constraint} ]` in method: `BormCommunication >> #constraints` when {#constraint->nil}

- `^ self sender` in method: `BormCommunication >> #source`

"

	<madeBySmallAmp>
	emptyCommunication addDataFlow: emptyDataFlow.
	self
		assert: emptyCommunication constraints class equals: Array;
		assert: emptyCommunication source isNil
]

{ #category : #'as yet unclassified' }
BormCommunicationTest408 >> testRemoveDataFlow_amp [
	"I test correctness of: 

- `^ receiver` in method: `BormCommunication >> #receiver` when {#receiver->nil}

- `^ {constraint}` in method: `BormCommunication >> #constraints`

- `^ self receiver` in method: `BormCommunication >> #target`

- `^ sender` in method: `BormCommunication >> #sender` when {#sender->nil}

"

	<madeBySmallAmp>
	emptyCommunication addDataFlow: emptyDataFlow.
	self
		assert: emptyCommunication receiver isNil;
		assert: emptyCommunication constraints class equals: Array;
		assert: emptyCommunication target isNil;
		assert: emptyCommunication source isNil.
	emptyCommunication removeDataFlow: emptyDataFlow
]
