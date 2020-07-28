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
	self
		assert: d places class equals: OrderedCollection;
		assert: d transitions class equals: OrderedCollection;
		assert: d nodes class equals: OrderedCollection.
	first := OPPetriNetTransition new name: '1'.
	d add: first.
	second := OPPetriNetPTPlace new name: '2'.
	d add: second.
	t := OPPetriNetNormalArc from: d elements first to: d elements second.
	d add: t
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
