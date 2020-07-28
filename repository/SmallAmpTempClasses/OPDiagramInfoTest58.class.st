Class {
	#name : #OPDiagramInfoTest58,
	#superclass : #OPDiagramInfoTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPDiagramInfoTest58 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPDiagramInfoTest58 >> testIsForView_amp [
	"I test correctness of: 

- `^ isOpen` in method: `OPDiagramInfo >> #isOpen` when {#isOpen->nil}

- `^ isSelected` in method: `OPDiagramInfo >> #isSelected` when {#isSelected->nil}

- `^ order` in method: `OPDiagramInfo >> #order` when {#order->0}

"

	<madeBySmallAmp>
	| info view |
	view := OPDiagram new name: 'xxx'.
	info := view asInfo.
	self
		assert: info isOpen isNil;
		assert: info isSelected isNil;
		assert: info order equals: 0.
	info := view asInfo
		diagramName: 'other';
		modelType: 'Flow';
		modelName: 'otherComp'
]

{ #category : #'as yet unclassified' }
OPDiagramInfoTest58 >> testIsForView_amp_A23 [
	"I test correctness of: 

- `^ String
	<< [ :stream | 
		(OPJsonWriter on: stream)
			mapInstVarsFor: self class;
			nextPut: self ]` in method: `OPDiagramInfo >> #asJson`

"

	<madeBySmallAmp>
	| info view anOPDiagramInfo aString |
	view := OPDiagram new name: 'xxx'.
	info := (view
		asInfo;
		asInfo) diagramName: 'other'.
	info := view asInfo modelType: 'Flow'.
	anOPDiagramInfo := view asInfo.
	aString := anOPDiagramInfo
		modelName: 'otherComp';
		asJson.
	self
		assert: aString
		equals:
			'{
	"diagramName" : "xxx",
	"modelName" : "otherComp",
	"modelType" : "UndefinedObject",
	"order" : 0
}'
]
