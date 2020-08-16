Class {
	#name : #SmallBank2Test13,
	#superclass : #SmallBank2Test,
	#classInstVars : [
		'observer'
	],
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
SmallBank2Test13 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
SmallBank2Test13 class >> observer [ ^ observer ifNil: [ observer := SAObserver newForTarget: {SmallBank2} ]
]

{ #category : #'as yet unclassified' }
SmallBank2Test13 class >> observerReset [  observer := nil 
]

{ #category : #'as yet unclassified' }
SmallBank2Test13 >> testDeposit_amp [
	| b tmp_KKdK8Ptica1 |
	[ | smallamp_elapsedTime noObserve |
	noObserve := false.
	smallamp_elapsedTime := Time
		millisecondsToRun: [ [ b := SmallBank2 with: 10 ]
				valueWithin: 2000 milliSeconds
				onTimeout: [ self class observer observeTimeOut: 2000 id: 1.
					noObserve := true ] ].
	noObserve
		ifFalse: [ [ self class observer observe: SmallBank2 name: 'SmallBank2' id: 1.
			self class observer
				observeResult: b
				receiver: SmallBank2
				selector: #with:
				name: #b
				id: 1 ]
				on: Error
				do: [ :saERR | self error: 'checkMe' ] ] ]
		on: Error
		do: [ :ex | 
			self class observer observeException: ex id: 1.
			^ self ].
	[ | smallamp_elapsedTime noObserve |
	noObserve := false.
	smallamp_elapsedTime := Time
		millisecondsToRun: [ [ tmp_KKdK8Ptica1 := b deposit: 100 ]
				valueWithin: 2000 milliSeconds
				onTimeout: [ self class observer observeTimeOut: 2000 id: 2.
					noObserve := true ] ].
	noObserve
		ifFalse: [ [ self class observer observe: b name: 'b' id: 2.
			self class observer
				observeResult: tmp_KKdK8Ptica1
				receiver: b
				selector: #deposit:
				name: #tmp_KKdK8Ptica1
				id: 2 ]
				on: Error
				do: [ :saERR | self error: 'checkMe' ] ] ]
		on: Error
		do: [ :ex | 
			self class observer observeException: ex id: 2.
			^ self ]
]
