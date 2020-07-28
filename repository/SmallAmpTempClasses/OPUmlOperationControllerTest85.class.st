Class {
	#name : #OPUmlOperationControllerTest85,
	#superclass : #OPUmlOperationControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlOperationControllerTest85 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlOperationControllerTest85 >> testModelClass_amp_A0 [
	"I test correctness of: 

- `^ true` in method: `OPUmlOperationController >> #isHideable`

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isAbstract);
	label: 'Is Abstract';
	priority: 5;
	yourself` in method: `OPUmlOperationController >> #descriptionIsAbstract`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	controller modelClass.
	self assert: controller isHideable.
	aMABooleanDescription := controller descriptionIsAbstract.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlOperationControllerTest85 >> testModelClass_amp_A3 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isStatic);
	label: 'Is Static';
	priority: 10;
	yourself` in method: `OPUmlOperationController >> #descriptionIsStatic`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	aMABooleanDescription := controller
		modelClass;
		descriptionIsStatic.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]
