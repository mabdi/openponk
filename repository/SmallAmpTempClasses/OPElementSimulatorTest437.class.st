Class {
	#name : #OPElementSimulatorTest437,
	#superclass : #OPElementSimulatorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPElementSimulatorTest437 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPElementSimulatorTest437 >> testAccessing_amp [
	"I test correctness of: 

- `^ aToken` in method: `OPElementSimulator >> #removeToken:`

- `^ removedTokens` in method: `OPElementSimulator >> #removeTokens:` when {#removedTokens->nil}

"

	<madeBySmallAmp>
	| assertTokens anOPDummyDCToken aCollection |
	assertTokens := [ :amount |  ].
	simulator addToken: OPDummyDCToken new.
	assertTokens value: 3.
	simulator addToken: OPDummyDCToken new.
	assertTokens value: 4.
	anOPDummyDCToken := simulator removeToken: simulator tokens first.
	self assert:
		anOPDummyDCToken class equals: OPDummyDCToken.
	assertTokens value: 3.
	aCollection := simulator removeAllTokens.
	self assert:
		aCollection class equals: OrderedCollection
]

{ #category : #'as yet unclassified' }
OPElementSimulatorTest437 >> testInstanceCreation_amp [
	"I test correctness of: 

- `^ diagramSimulator` in method: `OPElementSimulator >> #diagramSimulator`

- `^ priority` in method: `OPElementSimulator >> #priority`

"

	<madeBySmallAmp>
	simulator delay.
	self
		assert: simulator diagramSimulator isNil;
		assert: simulator priority equals: 0
]
