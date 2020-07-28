Class {
	#name : #OPUmlClassEditorPluginTest57,
	#superclass : #OPUmlClassEditorPluginTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlClassEditorPluginTest57 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlClassEditorPluginTest57 >> testModelClass_amp [
	"I test correctness of: 

- `^ OPUmlLayouter` in method: `OPUmlClassEditorPlugin >> #layouterClass`

"

	<madeBySmallAmp>
	plugin modelClass.
	self assert: plugin layouterClass class equals: OPUmlLayouter class
]

{ #category : #'as yet unclassified' }
OPUmlClassEditorPluginTest57 >> testName_amp [
	"I test correctness of: 

- `^ OPUmlModelSerializer` in method: `OPUmlClassEditorPlugin >> #modelSerializerClass`

- `^ true` in method: `OPUmlClassEditorPlugin >> #supportsHidingElements`

"

	<madeBySmallAmp>
	plugin name.
	self
		assert: plugin modelSerializerClass class
			equals: OPUmlModelSerializer class;
		assert: plugin supportsHidingElements
]
