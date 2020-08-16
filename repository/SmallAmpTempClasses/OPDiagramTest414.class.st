Class {
	#name : #OPDiagramTest414,
	#superclass : #OPDiagramTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPDiagramTest414 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPDiagramTest414 >> testModel_amp_A0 [
	"I test correctness of: 

- `^ notes` in method: `OPDiagram >> #notes` when {#notes->nil}

- `^ self name = 'default'` in method: `OPDiagram >> #isDefault`

- `(model respondsTo: #name)
	ifTrue: [ model name ]
	ifFalse: [ model className ]` in method: `OPDiagram >> #modelName` when {#model->nil}

"

	<madeBySmallAmp>
	| model project anOPDiagram |
	model := OPTestContainerModel new.
	anOPDiagram := OPDiagram new.
	self
		assert: anOPDiagram notes isNil;
		deny: anOPDiagram isDefault.
	self assert: anOPDiagram modelType equals: 'UndefinedObject'.
	self assert: anOPDiagram model isNil.
	self assert: anOPDiagram modelName equals: 'UndefinedObject'.
	view := anOPDiagram model: model.
	self assert: anOPDiagram modelName equals: 'container'.
	self assert: anOPDiagram modelType equals: 'OPTestContainerModel'.
	self assert: anOPDiagram model class equals: OPTestContainerModel.
	self assert: anOPDiagram model dependents class equals: Array.
	self assertEmpty: anOPDiagram model dependents.
	self assert: anOPDiagram model name equals: 'container'.
	self
		assert: anOPDiagram model entities class
		equals: OrderedCollection.
	self assertEmpty: anOPDiagram model entities.
	self assert: anOPDiagram modelName equals: 'container'.
	anOPDiagram modelType
]

{ #category : #'as yet unclassified' }
OPDiagramTest414 >> testModel_amp_A5 [
	<madeBySmallAmp>
	| model project anOPDiagram |
	model := OPTestContainerModel new.
	anOPDiagram := OPDiagram new.
	view := anOPDiagram model: model.
	self should: [ anOPDiagram newCopy ] raise: Error "Error: Instances of UndefinedObject are not indexable"
]

{ #category : #'as yet unclassified' }
OPDiagramTest414 >> testUpdateFromRoassalView_amp_L7 [
	"I test correctness of: 

- `^ (model respondsTo: #typeName)
	ifTrue: [ model typeName ]
	ifFalse: [ model className ]` in method: `OPDiagram >> #modelType` when {#model->nil}

- `^ (model respondsTo: #name)
	ifTrue: [ model name ]
	ifFalse: [ model className ]` in method: `OPDiagram >> #modelName` when {#model->nil}

- `self name = 'default'` in method: `OPDiagram >> #isDefault`

"

	<madeBySmallAmp>
	| roassalView aTRCamera |
	view := OPDiagram new.
	self
		assert: view modelType equals: 'UndefinedObject';
		assert: view modelName equals: 'UndefinedObject';
		deny: view isDefault.
	roassalView := RTView new.
	aTRCamera := roassalView canvas camera.
	aTRCamera := aTRCamera
		translateTo: 200 @ 28;
		scale: 0.23.
	view updateFromRoassalView: roassalView
]
