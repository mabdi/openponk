Class {
	#name : #OPFuelSerializerTest14,
	#superclass : #OPFuelSerializerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPFuelSerializerTest14 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPFuelSerializerTest14 >> testSaveMemento_amp [
	"I test correctness of: 

- `^ 'fuel'` in method: `OPFuelSerializer >> #formatName`

"

	<madeBySmallAmp>
	serializer saveMemento: memento to: file.
	self assert: serializer formatName equals: 'fuel'
]
