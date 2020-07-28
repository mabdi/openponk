Class {
	#name : #BormTransitionTest69,
	#superclass : #BormTransitionTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
BormTransitionTest69 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
BormTransitionTest69 >> testAllEntities2_amp [
	"I test correctness of: 

- `^ source` in method: `BormTransition >> #source` when {#source->nil}

- `^ {constraint}` in method: `BormTransition >> #constraints`

"

	<madeBySmallAmp>
	emptyTransition constraint: emptyConstraint.
	self
		assert: emptyTransition source isNil;
		assert: emptyTransition constraints class equals: Array
]

{ #category : #'as yet unclassified' }
BormTransitionTest69 >> testEmptyConstraint_amp [
	"I test correctness of: 

- `^ constraint ifNil: [ #() ] ifNotNil: [ ^ {constraint} ]` in method: `BormTransition >> #constraints` when {#constraint->nil}

- `^ target` in method: `BormTransition >> #target` when {#target->nil}

"

	<madeBySmallAmp>
	emptyTransition constraint.
	self
		assert: emptyTransition constraints class equals: Array;
		assert: emptyTransition target isNil
]
