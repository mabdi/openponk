Class {
	#name : #OPTokenTest229,
	#superclass : #OPTokenTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPTokenTest229 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPTokenTest229 >> testInstanceCreation_amp [
	"I test correctness of: 

- `^ diagramSimulator` in method: `OPToken >> #diagramSimulator`

- `^ element` in method: `OPToken >> #element`

- `^ priority` in method: `OPToken >> #priority`

"

	<madeBySmallAmp>
	simulator delay.
	self
		assert: simulator diagramSimulator isNil;
		assert: simulator element isNil;
		assert: simulator priority equals: 0
]
