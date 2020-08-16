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
		assert: emptyCommunication source isNil.
	self assert: emptyCommunication constraints class equals: Array.
	self assertEmpty: emptyCommunication constraints
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
	self assert: emptyCommunication class equals: BormCommunication.
	self assert: emptyCommunication constraint isNil.
	self assert: emptyCommunication receiver isNil.
	self assert: emptyCommunication constraints class equals: Array.
	self assertEmpty: emptyCommunication constraints.
	self assert: emptyCommunication allEntities class equals: Set.
	self assert: emptyCommunication allEntities capacity equals: 7.
	self assert: emptyCommunication allEntities isHealthy.
	self assert: emptyCommunication allEntities size equals: 1.
	self
		assert: emptyCommunication dataFlows class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication dataFlows.
	self assert: emptyCommunication target isNil.
	self deny: emptyCommunication hasConstraint.
	self assert: emptyCommunication entity class equals: BormEntity.
	self assert: emptyCommunication entity belongsTo isNil.
	self
		assert: emptyCommunication entity relatedElements class
		equals: Array.
	self assertEmpty: emptyCommunication entity relatedElements.
	self
		assert: emptyCommunication entity elements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity elements.
	self assert: emptyCommunication entity owner isNil.
	self assert: emptyCommunication entity name equals: ''.
	self
		assert: emptyCommunication entity ownedElements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity ownedElements.
	self
		assert: emptyCommunication entity representations class
		equals: SRToManyLink.
	self assert: emptyCommunication source isNil.
	self assert: emptyCommunication sender isNil.
	emptyCommunication addDataFlow: emptyDataFlow.
	self assert: emptyCommunication class equals: BormCommunication.
	self assert: emptyCommunication constraint isNil.
	self assert: emptyCommunication receiver isNil.
	self assert: emptyCommunication constraints class equals: Array.
	self assertEmpty: emptyCommunication constraints.
	self assert: emptyCommunication allEntities class equals: Set.
	self assert: emptyCommunication allEntities capacity equals: 7.
	self assert: emptyCommunication allEntities isHealthy.
	self assert: emptyCommunication allEntities size equals: 2.
	self
		assert: emptyCommunication dataFlows class
		equals: OrderedCollection.
	self assert: emptyCommunication dataFlows size equals: 1.
	self
		assert: (emptyCommunication dataFlows at: 1) class
		equals: BormDataFlow.
	self assert: emptyCommunication target isNil.
	self deny: emptyCommunication hasConstraint.
	self assert: emptyCommunication entity class equals: BormEntity.
	self assert: emptyCommunication entity belongsTo isNil.
	self
		assert: emptyCommunication entity relatedElements class
		equals: Array.
	self assertEmpty: emptyCommunication entity relatedElements.
	self
		assert: emptyCommunication entity elements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity elements.
	self assert: emptyCommunication entity owner isNil.
	self assert: emptyCommunication entity name equals: ''.
	self
		assert: emptyCommunication entity ownedElements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity ownedElements.
	self
		assert: emptyCommunication entity representations class
		equals: SRToManyLink.
	self assert: emptyCommunication source isNil.
	self assert: emptyCommunication sender isNil.
	self
		assert: emptyCommunication receiver isNil;
		assert: emptyCommunication constraints class equals: Array;
		assert: emptyCommunication target isNil;
		assert: emptyCommunication source isNil.
	emptyCommunication removeDataFlow: emptyDataFlow.
	self assert: emptyCommunication class equals: BormCommunication.
	self assert: emptyCommunication constraint isNil.
	self assert: emptyCommunication receiver isNil.
	self assert: emptyCommunication constraints class equals: Array.
	self assertEmpty: emptyCommunication constraints.
	self assert: emptyCommunication allEntities class equals: Set.
	self assert: emptyCommunication allEntities capacity equals: 7.
	self assert: emptyCommunication allEntities isHealthy.
	self assert: emptyCommunication allEntities size equals: 1.
	self
		assert: emptyCommunication dataFlows class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication dataFlows.
	self assert: emptyCommunication target isNil.
	self deny: emptyCommunication hasConstraint.
	self assert: emptyCommunication entity class equals: BormEntity.
	self assert: emptyCommunication entity belongsTo isNil.
	self
		assert: emptyCommunication entity relatedElements class
		equals: Array.
	self assertEmpty: emptyCommunication entity relatedElements.
	self
		assert: emptyCommunication entity elements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity elements.
	self assert: emptyCommunication entity owner isNil.
	self assert: emptyCommunication entity name equals: ''.
	self
		assert: emptyCommunication entity ownedElements class
		equals: OrderedCollection.
	self assertEmpty: emptyCommunication entity ownedElements.
	self
		assert: emptyCommunication entity representations class
		equals: SRToManyLink.
	self assert: emptyCommunication source isNil.
	self assert: emptyCommunication sender isNil
]
