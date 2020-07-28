Class {
	#name : #BormORModelTest53,
	#superclass : #BormORModelTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
BormORModelTest53 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testAllEntities2_amp_A2 [
	<madeBySmallAmp>
	emptyModel add: emptyParticipant.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000)
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testEmpty_amp [
	"I test correctness of: 

- `^ project` in method: `BormORModel >> #project` when {#project->nil}

"

	<madeBySmallAmp>
	emptyModel participants.
	self assert: emptyModel project isNil
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testEmpty_amp_A2 [
	<madeBySmallAmp>
	emptyModel participants.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000)
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testRemoveAll_amp_A2 [
	"I test correctness of: 

- `^ (aFqn includesSubstring: '::')
	ifTrue: [ self nodeNamed: aFqn ]
	ifFalse: [ self participantNamed: aFqn ]` in method: `BormORModel >> #@`

"

	<madeBySmallAmp>
	emptyModel add: self fullParticipant.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000).
	emptyModel removeAll.
	self assert: emptyModel project diagrams size equals: 1
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testRemoveAll_amp_A6 [
	<madeBySmallAmp>
	emptyModel
		add: self fullParticipant;
		removeAll.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000)
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testRemoveParticipant_amp_A10 [
	<madeBySmallAmp>
	emptyModel
		when: OPElementRemoved do: [ :event | eventTriggered := true ];
		add: emptyParticipant;
		remove: emptyParticipant.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000)
]

{ #category : #'as yet unclassified' }
BormORModelTest53 >> testRemoveParticipant_amp_A6 [
	<madeBySmallAmp>
	emptyModel
		when: OPElementRemoved do: [ :event | eventTriggered := true ];
		add: emptyParticipant.
	self
		should: [ emptyModel open ]
		takeMoreThan: (Duration milliSeconds: 2000).
	emptyModel remove: emptyParticipant
]
