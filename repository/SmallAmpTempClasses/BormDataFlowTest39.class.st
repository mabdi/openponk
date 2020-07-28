Class {
	#name : #BormDataFlowTest39,
	#superclass : #BormDataFlowTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
BormDataFlowTest39 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
BormDataFlowTest39 >> testAllEntities_amp [
	"I test correctness of: 

- `^ type` in method: `BormDataFlow >> #type` when {#type->#input}

"

	<madeBySmallAmp>
	emptyDataFlow allEntities.
	self assert: emptyDataFlow type equals: #input
]

{ #category : #'as yet unclassified' }
BormDataFlowTest39 >> testChangeDataFlowType_amp [
	"I test correctness of: 

- `^ #output` in method: `BormDataFlow class >> #outputType`

"

	<madeBySmallAmp>
	emptyDataFlow beOutput.
	self assert: emptyDataFlow type equals: #output.
	emptyDataFlow beInput
]
