Class {
	#name : #OPUmlCompartmentableShapeTest332,
	#superclass : #OPUmlCompartmentableShapeTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlCompartmentableShapeTest332 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlCompartmentableShapeTest332 >> testRemoveExtentChanged_amp [
	"I test correctness of: 

- `(rect height % 20) isZero
	ifFalse: [ rect := rect withHeight: (rect height roundUpTo: 20) ]` in method: `OPUmlCompartmentableShape >> #layout`

- `rect width < minSize width` in method: `OPUmlCompartmentableShape >> #layout`

"

	<madeBySmallAmp>
	| compartment compLbl view fullExtent |
	OPUmlNameLabel new owningElement: element.
	compartment := OPUmlCompartment new.
	compartment owningElement: element.
	5
		timesRepeat: [ (compLbl := OPUmlLabel new) owningElement: compartment ].
	view := RTView new.
	fullExtent := element
		renderIn: view;
		extent.
	self
		assert: fullExtent y equals: 140;
		assert: fullExtent x equals: 140
]

{ #category : #'as yet unclassified' }
OPUmlCompartmentableShapeTest332 >> testRemoveExtentChanged_amp_A12 [
	"I test correctness of: 

- `rect height < minSize height
	ifTrue: [ rect := rect withHeight: minSize height ]` in method: `OPUmlCompartmentableShape >> #layout`

"

	<madeBySmallAmp>
	| compartment compLbl view fullExtent |
	OPUmlNameLabel new owningElement: element.
	compartment := OPUmlCompartment new.
	compartment owningElement: element.
	5
		timesRepeat: [ (compLbl := OPUmlLabel new) owningElement: compartment ].
	view := RTView new.
	fullExtent := element
		renderIn: view;
		remove;
		extent.
	self assert: fullExtent y equals: 60
]

{ #category : #'as yet unclassified' }
OPUmlCompartmentableShapeTest332 >> testRemoveFromViewEmpty_amp_A18 [
	"I test correctness of: 

- `500
	max:
		(self ownedElements
			ifEmpty: [ 0 ]
			ifNotEmpty: [ :f | f max: #minWidth ])` in method: `OPUmlCompartmentableShape >> #minWidth`

"

	<madeBySmallAmp>
	| view anInteger |
	view := RTView new.
	anInteger := element
		renderIn: view;
		remove;
		minWidth.
	self assert: anInteger equals: 500
]

{ #category : #'as yet unclassified' }
OPUmlCompartmentableShapeTest332 >> testRemoveFromViewEmpty_amp_A5 [
	"I test correctness of: 

- `^ 500
	max:
		(self ownedElements
			ifEmpty: [ 0 ]
			ifNotEmpty: [ :f | f max: #minWidth ])` in method: `OPUmlCompartmentableShape >> #minWidth`

"

	<madeBySmallAmp>
	| view anInteger |
	view := RTView new.
	anInteger := element
		renderIn: view;
		minWidth.
	self assert: anInteger equals: 500.
	element remove
]
