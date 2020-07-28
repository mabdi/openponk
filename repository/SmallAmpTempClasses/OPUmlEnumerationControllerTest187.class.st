Class {
	#name : #OPUmlEnumerationControllerTest187,
	#superclass : #OPUmlEnumerationControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 >> testModelClass_amp_A3 [
	"I test correctness of: 

- `^ self modelClass new
	name: 'Enumeration';
	yourself` in method: `OPUmlEnumerationController >> #createModel`

"

	<madeBySmallAmp>
	| anOPUMLEnumeration |
	anOPUMLEnumeration := controller
		modelClass;
		createModel.
	self assert:
		anOPUMLEnumeration class equals: OPUMLEnumeration
]

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 >> testRemoveEmpty_amp_A8 [
	"I test correctness of: 

- `^ queue asArray
	select: [ :each | diagramController hasSupportForModel: each ]` in method: `OPUmlEnumerationController >> #allShowableElements`

"

	<madeBySmallAmp>
	| aCollection |
	controller model: model.
	diagramController addController: controller.
	aCollection := controller
		showWithoutDependentInDiagram: diagramController;
		allShowableElements.
	self assert:
		aCollection class equals: Array.
	controller remove
]

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 >> testRemoveWithLiteral_amp_A1 [
	<madeBySmallAmp>
	model ownedLiterals add: OPUMLEnumerationLiteral new.
	controller model: model.
	self
		should: [ controller allShowableElements ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 >> testRemoveWithLiteral_amp_A8 [
	"I test correctness of: 

- `queue asArray
	select: [ :each | diagramController hasSupportForModel: each ]` in method: `OPUmlEnumerationController >> #allShowableElements`

"

	<madeBySmallAmp>
	| aCollection |
	model ownedLiterals add: OPUMLEnumerationLiteral new.
	controller model: model.
	diagramController addController: controller.
	aCollection := controller
		showWithoutDependentInDiagram: diagramController;
		allShowableElements.
	self assert:
		aCollection class equals: Array.
	controller remove
]

{ #category : #'as yet unclassified' }
OPUmlEnumerationControllerTest187 >> testShowInDiagram_amp [
	"I test correctness of: 

- `^ #Enumeration` in method: `OPUmlEnumerationController >> #modelClassName`

"

	<madeBySmallAmp>
	| anOPUmlEnumerationController |
	anOPUmlEnumerationController := diagramController
		showWithoutDependentInDiagramModel: model.
	self
		assert:
			anOPUmlEnumerationController modelClassName
		equals: #Enumeration
]
