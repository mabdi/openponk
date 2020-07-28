Class {
	#name : #OPUmlPackageImportControllerTest143,
	#superclass : #OPUmlPackageImportControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlPackageImportControllerTest143 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlPackageImportControllerTest143 >> testModelClass_amp_A0 [
	"I test correctness of: 

- `^ nil` in method: `OPUmlPackageImportController >> #descriptionVisibility`

"

	<madeBySmallAmp>
	| anUndefinedObject |
	anUndefinedObject := controller
		modelClass;
		descriptionVisibility.
	self assert:
		anUndefinedObject isNil
]

{ #category : #'as yet unclassified' }
OPUmlPackageImportControllerTest143 >> testModelClass_amp_A7 [
	"I test correctness of: 

- `^ nil` in method: `OPUmlPackageImportController >> #descriptionName`

"

	<madeBySmallAmp>
	| anUndefinedObject |
	anUndefinedObject := controller
		modelClass;
		descriptionName.
	self assert:
		anUndefinedObject isNil
]
