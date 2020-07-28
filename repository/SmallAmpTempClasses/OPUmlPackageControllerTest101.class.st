Class {
	#name : #OPUmlPackageControllerTest101,
	#superclass : #OPUmlPackageControllerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlPackageControllerTest101 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlPackageControllerTest101 >> testModelClass_amp_A2 [
	"I test correctness of: 

- `^ true` in method: `OPUmlPackageController >> #isHideable`

- `^ #()` in method: `OPUmlPackageController >> #allShowableElements`

"

	<madeBySmallAmp>
	| aCollection |
	controller modelClass.
	self assert: controller isHideable.
	aCollection := controller allShowableElements.
	self assert:
		aCollection class equals: Array
]
