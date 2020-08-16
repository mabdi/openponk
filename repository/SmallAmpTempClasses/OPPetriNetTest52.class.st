Class {
	#name : #OPPetriNetTest52,
	#superclass : #OPPetriNetTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPPetriNetTest52 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp [
	"I test correctness of: 

- `^ elements select: #isPlace` in method: `OPPetriNet >> #places`

- `^ elements select: #isTransition` in method: `OPPetriNet >> #transitions`

- `^ elements select: #isNode` in method: `OPPetriNet >> #nodes`

"

	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	self assertEmpty: d arcs.
	self assertEmpty: d places.
	self assertEmpty: d transitions.
	self assertEmpty: d elements.
	self assertEmpty: d nodes.
	self assertEmpty: d ownedElements.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	self assert: d transitions size equals: 1.
	self assert: (d transitions at: 1) class equals: OPPetriNetTransition.
	self assert: d elements size equals: 1.
	self assert: (d elements at: 1) class equals: OPPetriNetTransition.
	self assert: d nodes size equals: 1.
	self assert: (d nodes at: 1) class equals: OPPetriNetTransition.
	self assert: d ownedElements size equals: 1.
	self
		assert: (d ownedElements at: 1) class
		equals: OPPetriNetTransition.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	self assert: d places size equals: 1.
	self assert: (d places at: 1) class equals: OPPetriNetPTPlace.
	self assert: d elements size equals: 2.
	self assert: (d elements at: 2) class equals: OPPetriNetPTPlace.
	self assert: d nodes size equals: 2.
	self assert: (d nodes at: 2) class equals: OPPetriNetPTPlace.
	self assert: d ownedElements size equals: 2.
	self assert: (d ownedElements at: 2) class equals: OPPetriNetPTPlace.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t.
	self assert: d arcs size equals: 1.
	self assert: (d arcs at: 1) class equals: OPPetriNetNormalArc.
	self assert: d elements size equals: 3.
	self assert: (d elements at: 3) class equals: OPPetriNetNormalArc.
	self assert: d ownedElements size equals: 3.
	self
		assert: (d ownedElements at: 3) class
		equals: OPPetriNetNormalArc
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L0 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: ''.
	d add: first.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L1 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '2'.
	d add: first.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L2 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1>'.
	d add: first.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L3 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: ''.
	d add: first.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L5 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new name: ''.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L6 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new name: 'i'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L7 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new name: '2B'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L8 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new name: ''.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testAdd_amp_L9 [
	<madeBySmallAmp>
	| d first second t |
	super testAdd.
	self setUp.
	d := OPPetriNet new.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new
		name: ',Itn7f.{>3^5y)qF:O;%Wg7gfN)PfoyC'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testComplexAddingRemoving_amp_L11 [
	<madeBySmallAmp>
	| place1 place2 place3 place4 trans arc1 arc2 arc3 arc4 anOPPetriNetPTPlace |
	diagram := OPPetriNet new name: 'Diagram'.
	anOPPetriNetPTPlace := OPPetriNetPTPlace new.
	self
		should: [ place1 := anOPPetriNetPTPlace tokens: SmallInteger minVal ]
		raise: AssertionFailure
]

{ #category : #'as yet unclassified' }
OPPetriNetTest52 >> testComplexAddingRemoving_amp_L18 [
	<madeBySmallAmp>
	| place1 place2 place3 place4 trans arc1 arc2 arc3 arc4 anOPPetriNetPTPlace |
	diagram := OPPetriNet new name: 'Diagram'.
	place1 := OPPetriNetPTPlace new tokens: 2.
	anOPPetriNetPTPlace := OPPetriNetPTPlace
		new;
		new;
		new.
	self
		should: [ place4 := anOPPetriNetPTPlace tokens: SmallInteger minVal ]
		raise: AssertionFailure
]
