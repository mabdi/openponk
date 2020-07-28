Class {
	#name : #OPUmlEdgeTest127,
	#superclass : #OPUmlEdgeTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlEdgeTest127 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlEdgeTest127 >> testRemoveFromView_amp [
	"I test correctness of: 

- `^ source` in method: `OPUmlEdge >> #source`

- `^ target` in method: `OPUmlEdge >> #target`

"

	<madeBySmallAmp>
	| lbl v |
	lbl := OPUmlLabel new.
	lbl owningElement: element.
	v := RTView new.
	element renderIn: v.
	self
		assert: element source class equals: OPUmlLabel;
		assert: element target class equals: OPUmlLabel.
	lbl renderIn: v.
	element remove
]

{ #category : #'as yet unclassified' }
OPUmlEdgeTest127 >> testRemoveFromView_amp_A18 [
	<madeBySmallAmp>
	| lbl v |
	lbl := OPUmlLabel new.
	lbl owningElement: element.
	v := RTView new.
	element renderIn: v.
	lbl renderIn: v.
	element remove.
	self should: [ element createConnection ] raise: MessageNotUnderstood
]
