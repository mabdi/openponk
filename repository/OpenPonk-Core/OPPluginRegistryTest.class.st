Class {
	#name : #OPPluginRegistryTest,
	#superclass : #TestCase,
	#instVars : [
		'registry'
	],
	#category : #'OpenPonk-Core-Tests'
}

{ #category : #initialization }
OPPluginRegistryTest >> setUp [
	super setUp.
	registry := OPPluginRegistry new.
	registry add: OPTestPlugin new
]

{ #category : #initialization }
OPPluginRegistryTest >> testPluginFor [
	self
		assert: (registry pluginFor: OPTestContainerModel new) class
		equals: OPTestPlugin.
	self assert: registry class equals: OPPluginRegistry.
	self assert: registry plugins class equals: OrderedCollection.
	self assert: registry plugins size equals: 1.
	self assert: (registry plugins at: 1) class equals: OPTestPlugin
]
