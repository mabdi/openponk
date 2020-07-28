Class {
	#name : #OPControllerFactoryRegistrationTest22,
	#superclass : #OPControllerFactoryRegistrationTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPControllerFactoryRegistrationTest22 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPControllerFactoryRegistrationTest22 >> testIsForModel_amp [
	"I test correctness of: 

- `^ controllerClass` in method: `OPControllerFactoryRegistration >> #controllerClass` when {#controllerClass->nil}

"

	<madeBySmallAmp>
	| anOPControllerFactoryRegistration |
	anOPControllerFactoryRegistration := OPControllerFactoryRegistration
		new.
	self assert:
		anOPControllerFactoryRegistration controllerClass isNil.
	registration := anOPControllerFactoryRegistration
		modelClass: OPTestEntityModel
]
