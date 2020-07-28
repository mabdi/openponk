Class {
	#name : #OPPluginRegistryTest14,
	#superclass : #OPPluginRegistryTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPPluginRegistryTest14 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPPluginRegistryTest14 >> testPluginFor_amp [
	"I test correctness of: 

- `^ plugins` in method: `OPPluginRegistry >> #plugins`

"

	<madeBySmallAmp>
	registry pluginFor: OPTestContainerModel new.
	self assert: registry plugins class equals: OrderedCollection
]
