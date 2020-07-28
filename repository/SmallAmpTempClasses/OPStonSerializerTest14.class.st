Class {
	#name : #OPStonSerializerTest14,
	#superclass : #OPStonSerializerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPStonSerializerTest14 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPStonSerializerTest14 >> testSaveMemento_amp_A0 [
	"I test correctness of: 

- `^ 'ston'` in method: `OPStonSerializer >> #formatName`

"

	<madeBySmallAmp>
	| aString |
	aString := serializer
		saveMemento: memento to: file;
		formatName.
	self assert: aString equals: 'ston'
]
