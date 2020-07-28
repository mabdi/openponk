Class {
	#name : #OPPetriNetPlaceSimulatorTest102,
	#superclass : #OPPetriNetPlaceSimulatorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPPetriNetPlaceSimulatorTest102 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPPetriNetPlaceSimulatorTest102 >> testTokens_amp_A16 [
	"I test correctness of: 

- `^ self model capacity` in method: `OPPetriNetPlaceSimulator >> #capacity`

"

	<madeBySmallAmp>
	| anInteger |
	anInteger := simulator
		removeTokensAmount: 5;
		tokensAmount: 0;
		addTokensAmount: 5;
		capacity.
	self assert: anInteger equals: 1152921504606846975
]
