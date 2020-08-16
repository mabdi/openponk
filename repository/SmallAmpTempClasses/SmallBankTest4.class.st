Class {
	#name : #SmallBankTest4,
	#superclass : #SmallBankTest,
	#classInstVars : [
		'observer'
	],
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
SmallBankTest4 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
SmallBankTest4 class >> observer [ ^ observer ifNil: [ observer := SAObserver newForTarget: {SmallBank} ]
]

{ #category : #'as yet unclassified' }
SmallBankTest4 class >> observerReset [  observer := nil 
]

{ #category : #'as yet unclassified' }
SmallBankTest4 >> testDeposit_amp [
	| b tmp_ERZ3cuTIdH1 tmp_iOvwNh7v6H2 |
	[ | smallamp_elapsedTime noObserve |
	noObserve := false.
	smallamp_elapsedTime := Time
		millisecondsToRun: [ [ b := SmallBank new ]
				valueWithin: 2000 milliSeconds
				onTimeout: [ self class observer observeTimeOut: 2000 id: 1.
					noObserve := true ] ].
	noObserve
		ifFalse: [ [ self class observer observe: SmallBank name: 'SmallBank' id: 1.
			self class observer
				observeResult: b
				receiver: SmallBank
				selector: #new
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
		millisecondsToRun: [ [ tmp_ERZ3cuTIdH1 := b deposit: 10 ]
				valueWithin: 2000 milliSeconds
				onTimeout: [ self class observer observeTimeOut: 2000 id: 2.
					noObserve := true ] ].
	noObserve
		ifFalse: [ [ self class observer observe: b name: 'b' id: 2.
			self class observer
				observeResult: tmp_ERZ3cuTIdH1
				receiver: b
				selector: #deposit:
				name: #tmp_ERZ3cuTIdH1
				id: 2 ]
				on: Error
				do: [ :saERR | self error: 'checkMe' ] ] ]
		on: Error
		do: [ :ex | 
			self class observer observeException: ex id: 2.
			^ self ].
	[ | smallamp_elapsedTime noObserve |
	noObserve := false.
	smallamp_elapsedTime := Time
		millisecondsToRun: [ [ tmp_iOvwNh7v6H2 := b deposit: 100 ]
				valueWithin: 2000 milliSeconds
				onTimeout: [ self class observer observeTimeOut: 2000 id: 3.
					noObserve := true ] ].
	noObserve
		ifFalse: [ [ self class observer observe: b name: 'b' id: 3.
			self class observer
				observeResult: tmp_iOvwNh7v6H2
				receiver: b
				selector: #deposit:
				name: #tmp_iOvwNh7v6H2
				id: 3 ]
				on: Error
				do: [ :saERR | self error: 'checkMe' ] ] ]
		on: Error
		do: [ :ex | 
			self class observer observeException: ex id: 3.
			^ self ]
]
