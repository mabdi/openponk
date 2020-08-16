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
		assert: plugin supportsHidingElements.
	self assert: plugin class equals: OPUmlClassEditorPlugin.
	self
		assert: plugin modelSerializerClass asString
		equals: 'OPUmlModelSerializer'.
	self
		assert: plugin diagramControllerClass asString
		equals: 'OPUmlPackageDiagramController'.
	self assert: plugin icon class equals: Form.
	self deny: plugin icon isLittleEndian.
	self assert: plugin icon nativeDepth equals: 32.
	self assert: plugin icon extent equals: 16 @ 16.
	self deny: plugin icon isAllWhite.
	self deny: plugin icon isDisplayScreen.
	self assert: plugin icon height equals: 16.
	self assert: plugin icon shouldPreserveContents.
	self assert: plugin icon bits class equals: Bitmap.
	self assert: plugin icon bits defaultElement equals: 0.
	self assert: plugin icon bits byteSize equals: 1024.
	self assert: plugin icon bits size equals: 256.
	self deny: plugin icon bits isColormap.
	self assert: plugin icon isTranslucent.
	self assert: plugin icon offset equals: 0 @ 0.
	self deny: plugin icon hasNonStandardPalette.
	self assert: plugin icon isBigEndian.
	self assert: plugin icon width equals: 16.
	self deny: plugin icon isStatic.
	self assert: plugin icon depth equals: 32.
	self assert: plugin icon hasBeenModified.
	self assert: plugin icon center equals: 8 @ 8.
	self assert: plugin icon mightBeTranslucent.
	self assert: plugin icon displayScreen isNil.
	self assert: plugin icon isForm.
	self deny: plugin icon isExternalForm.
	self assert: plugin name equals: 'UML Class Editor'.
	self assert: plugin version equals: '0.0.0+unknown'.
	self assert: plugin modelClass asString equals: 'OPUMLModel'.
	self
		assert: plugin singleStringSerializer class
		equals: OPMementoDirectorySerializer.
	self assert: plugin supportsHidingElements.
	self assert: plugin diagramClass asString equals: 'OPUMLModel'.
	self assert: plugin layouterClass asString equals: 'OPUmlLayouter'.
	self
		assert: plugin diagramSerializerClass asString
		equals: 'OPJsonDiagramSerializer'.
	self
		assert: plugin serializer class
		equals: OPMementoDirectorySerializer
]
