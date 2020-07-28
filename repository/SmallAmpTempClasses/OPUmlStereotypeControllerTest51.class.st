Class {
	#name : #OPUmlStereotypeControllerTest51,
	#superclass : #OPUmlStereotypeControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlStereotypeControllerTest51 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlStereotypeControllerTest51 >> testModelClass_amp [
	"I test correctness of: 

- `^ #Stereotype` in method: `OPUmlStereotypeController >> #modelClassName`

"

	<madeBySmallAmp>
	controller modelClass.
	self assert: controller modelClassName equals: #Stereotype
]
