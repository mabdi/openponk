Class {
	#name : #OPUmlPropertyMagritteDescriptionsTest237,
	#superclass : #OPUmlPropertyMagritteDescriptionsTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A0 [
	"I test correctness of: 

- `^ MAStringDescription new
	accessor: (self descriptionAccessor: #defaultValue);
	accessor:
		(MAPluggableAccessor
			read: [ :me | 
				(reader value: me) defaultValue
					ifNil: [ '' ]
					ifNotNil: [ ((reader value: me) defaultValue isKindOf: OPUMLOpaqueExpression)
							ifTrue: [ (reader value: me) defaultValue bodies first ]
							ifFalse: [ '' ] ] ]
			write: [ :me :newValue | 
				(reader value: me) defaultValue
					ifNil: [ (reader value: me) defaultValue: OPUMLOpaqueExpression new ].
				((reader value: me) defaultValue isKindOf: OPUMLOpaqueExpression)
					ifTrue: [ (reader value: me) defaultValue bodies: {newValue} ].
				me refreshFigure ]);
	label: labelPrefix , 'Default Value';
	priority: 42;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionDefaultValue`

"

	<madeBySmallAmp>
	| aMAStringDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMAStringDescription := desc
		descriptionAccessor: #name;
		descriptionDefaultValue.
	self assert:
		aMAStringDescription class equals: MAStringDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A1 [
	"I test correctness of: 

- `^ MASingleOptionDescription new
	beExtensible;
	options: #('0..1' '1..1' '0..*' '1..*');
	reference: MAStringDescription new;
	accessor:
		(MAPluggableAccessor
			read: [ :me | 
				(reader value: me) lowerBound asString , '..'
					, (reader value: me) upperBound asString ]
			write: [ :me :newValue | 
				me writeMultiplicityFrom: newValue to: (reader value: me).
				me refreshFigure ]);
	label: 'Multiplicity';
	priority: 9;
	beSorted;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionMultiplicity`

"

	<madeBySmallAmp>
	| aMASingleOptionDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMASingleOptionDescription := desc
		descriptionAccessor: #name;
		descriptionMultiplicity.
	self
		assert:
			aMASingleOptionDescription class
		equals: MASingleOptionDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A10 [
	"I test correctness of: 

- `^ MAStringDescription new
	accessor: (self descriptionAccessor: #name);
	label: 'Name';
	priority: 2;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionName`

"

	<madeBySmallAmp>
	| aMAStringDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMAStringDescription := desc
		descriptionAccessor: #name;
		descriptionName.
	self assert:
		aMAStringDescription class equals: MAStringDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A11 [
	"I test correctness of: 

- `^ MASingleOptionDescription new
	optionsAndLabels:
		{(OPUMLAggregationKind none -> 'none').
		(OPUMLAggregationKind shared -> 'shared').
		(OPUMLAggregationKind composite -> 'composite')};
	reference: MAStringDescription new;
	accessor: (self descriptionAccessor: #aggregation);
	label: 'Aggregation';
	priority: 3;
	beSorted;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionAggregation`

"

	<madeBySmallAmp>
	| aMASingleOptionDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMASingleOptionDescription := desc
		descriptionAccessor: #name;
		descriptionAggregation.
	self
		assert:
			aMASingleOptionDescription class
		equals: MASingleOptionDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A2 [
	"I test correctness of: 

- `^ MAStringDescription new
	beReadonly;
	accessor:
		(MAPluggableAccessor
			read: [ :me | (reader value: me) type name ]
			write: [ :me :newValue |  ]);
	label: labelPrefix;
	priority: 1;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionType`

"

	<madeBySmallAmp>
	| aMAStringDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMAStringDescription := desc
		descriptionAccessor: #name;
		descriptionType.
	self assert:
		aMAStringDescription class equals: MAStringDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A3 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor:
		(MAPluggableAccessor
			read: [ :me | (reader value: me) isNavigable ]
			write: [ :me :newValue | 
				me writeNavigability: newValue to: (reader value: me).
				me refreshFigure ]);
	label: 'Is Navigable';
	priority: 10;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsNavigable`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsNavigable.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A4 [
	"I test correctness of: 

- `^ MASingleOptionDescription new
	optionsAndLabels:
		{(nil -> '').
		(OPUMLVisibilityKind public -> 'public').
		(OPUMLVisibilityKind protected -> 'protected').
		(OPUMLVisibilityKind private -> 'private').
		(OPUMLVisibilityKind new package -> 'package')};
	reference: MAStringDescription new;
	accessor: (self descriptionAccessor: #visibility);
	label: 'Visibility';
	priority: 8;
	beSorted;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionVisibility`

"

	<madeBySmallAmp>
	| aMASingleOptionDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMASingleOptionDescription := desc
		descriptionAccessor: #name;
		descriptionVisibility.
	self
		assert:
			aMASingleOptionDescription class
		equals: MASingleOptionDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A5 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isUnique);
	label: 'Is Unique';
	priority: 36;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsUnique`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsUnique.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A6 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isDerived);
	label: 'Is Derived';
	priority: 15;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsDerived`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsDerived.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A7 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isOrdered);
	label: 'Is Ordered';
	priority: 35;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsOrdered`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsOrdered.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A8 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isStatic);
	label: 'Is Static';
	priority: 11;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsStatic`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsStatic.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]

{ #category : #'as yet unclassified' }
OPUmlPropertyMagritteDescriptionsTest237 >> testDescriptionAccessor_amp_A9 [
	"I test correctness of: 

- `^ MABooleanDescription new
	accessor: (self descriptionAccessor: #isReadOnly);
	label: 'Is Read Only';
	priority: 14;
	yourself` in method: `OPUmlPropertyMagritteDescriptions >> #descriptionIsReadOnly`

"

	<madeBySmallAmp>
	| aMABooleanDescription |
	property := OPUMLProperty new.
	reader := [ :nope | property ].
	desc := OPUmlPropertyMagritteDescriptions
		reader: reader
		labelPrefix: ''.
	aMABooleanDescription := desc
		descriptionAccessor: #name;
		descriptionIsReadOnly.
	self assert:
		aMABooleanDescription class equals: MABooleanDescription
]
