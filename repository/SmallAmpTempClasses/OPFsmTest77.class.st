Class {
	#name : #OPFsmTest77,
	#superclass : #OPFsmTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPFsmTest77 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPFsmTest77 >> testRemoveState2_amp [
	"I test correctness of: 

- `^ elements select: [ :each | each isState ]` in method: `OPFsm >> #states`

- `^ false` in method: `OPFsm >> #isState`

- `^ false` in method: `OPFsm >> #isTransition`

"

	<madeBySmallAmp>
	diagram add: state.
	self
		assert: diagram states class equals: OrderedCollection;
		deny: diagram isState;
		deny: diagram isTransition.
	diagram add: selfTransition
]
