Class {
	#name : #OPRTElementsConstraintTest90,
	#superclass : #OPRTElementsConstraintTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
OPRTElementsConstraintTest90 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
OPRTElementsConstraintTest90 >> testChangingExtent_amp_L4 [
	"I test correctness of: 

- `^ conformingShape
	extent: originShape encompassingRectangle extent + aPoint` in method: `OPRTElementsConstraint class >> #changeExtentOf:like:plus:`

"

	<madeBySmallAmp>
	| aTRBoxShape |
	aTRBoxShape := OPRTElementsConstraint
		changeExtentOf: conformingShape
		like: originShape
		plus: 0 @ -5.
	self assert: aTRBoxShape class equals: TRBoxShape.
	self assert: aTRBoxShape class equals: TRBoxShape.
	self assert: aTRBoxShape extent equals: 10 @ 5.
	self assert: aTRBoxShape width equals: 10.
	self assert: aTRBoxShape rectangle class equals: Rectangle.
	self assert: aTRBoxShape rectangle top class equals: Fraction.
	self assert: aTRBoxShape rectangle top asString equals: '(-5/2)'.
	self assert: aTRBoxShape rectangle extent equals: 10 @ 5.
	self assert: aTRBoxShape rectangle hasPositiveExtent.
	self assert: aTRBoxShape rectangle area equals: 50.
	self deny: aTRBoxShape rectangle isTall.
	self assert: aTRBoxShape rectangle aboveCenter equals: 0 @ 0.
	self assert: aTRBoxShape rectangle bottomCenter equals: 0 @ (5 / 2).
	self assert: aTRBoxShape rectangle corner equals: 5 @ (5 / 2).
	self assert: aTRBoxShape rectangle left equals:  -5.
	self assert: aTRBoxShape rectangle origin equals:  -5 @ ( -5 / 2).
	self assert: aTRBoxShape rectangle width equals: 10.
	self assert: aTRBoxShape rectangle right equals: 5.
	self deny: aTRBoxShape rectangle isZero.
	self assert: aTRBoxShape rectangle isWide.
	self assert: aTRBoxShape rectangle innerCorners class equals: Array.
	self assert: aTRBoxShape rectangle innerCorners size equals: 4.
	self
		assert: (aTRBoxShape rectangle innerCorners at: 1) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle innerCorners at: 2) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle innerCorners at: 3) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle innerCorners at: 4) class
		equals: Point.
	self assert: aTRBoxShape rectangle topCenter equals: 0 @ ( -5 / 2).
	self assert: aTRBoxShape rectangle topRight equals: 5 @ ( -5 / 2).
	self assert: aTRBoxShape rectangle bottomRight equals: 5 @ (5 / 2).
	self assert: aTRBoxShape rectangle center equals: 0 @ 0.
	self assert: aTRBoxShape rectangle topLeft equals:  -5 @ ( -5 / 2).
	self assert: aTRBoxShape rectangle bottom class equals: Fraction.
	self assert: aTRBoxShape rectangle bottom asString equals: '(5/2)'.
	self assert: aTRBoxShape rectangle floatCenter equals: 0.0 @ 0.0.
	self assert: aTRBoxShape rectangle leftCenter equals:  -5 @ 0.
	self assert: aTRBoxShape rectangle isRectangle.
	self assert: aTRBoxShape rectangle bottomLeft equals:  -5 @ (5 / 2).
	self assert: aTRBoxShape rectangle corners class equals: Array.
	self assert: aTRBoxShape rectangle corners size equals: 4.
	self
		assert: (aTRBoxShape rectangle corners at: 1) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle corners at: 2) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle corners at: 3) class
		equals: Point.
	self
		assert: (aTRBoxShape rectangle corners at: 4) class
		equals: Point.
	self assert: aTRBoxShape rectangle rightCenter equals: 5 @ 0.
	self assert: aTRBoxShape rectangle height equals: 5.
	self assert: aTRBoxShape dashes isNil.
	self assert: aTRBoxShape height equals: 5.
	self assert: aTRBoxShape strokeWidth equals: 1.
	self assert: aTRBoxShape center equals: 0 @ 0.
	self assert: aTRBoxShape shouldBeDrawn.
	self
		assert: aTRBoxShape encompassingRectangle class
		equals: Rectangle.
	self
		assert: aTRBoxShape encompassingRectangle top class
		equals: Fraction.
	self
		assert: aTRBoxShape encompassingRectangle top asString
		equals: '(-5/2)'.
	self assert: aTRBoxShape encompassingRectangle extent equals: 10 @ 5.
	self assert: aTRBoxShape encompassingRectangle hasPositiveExtent.
	self assert: aTRBoxShape encompassingRectangle area equals: 50.
	self deny: aTRBoxShape encompassingRectangle isTall.
	self
		assert: aTRBoxShape encompassingRectangle aboveCenter
		equals: 0 @ 0.
	self
		assert: aTRBoxShape encompassingRectangle bottomCenter
		equals: 0 @ (5 / 2).
	self
		assert: aTRBoxShape encompassingRectangle corner
		equals: 5 @ (5 / 2).
	self assert: aTRBoxShape encompassingRectangle left equals:  -5.
	self
		assert: aTRBoxShape encompassingRectangle origin
		equals:  -5 @ ( -5 / 2).
	self assert: aTRBoxShape encompassingRectangle width equals: 10.
	self assert: aTRBoxShape encompassingRectangle right equals: 5.
	self deny: aTRBoxShape encompassingRectangle isZero.
	self assert: aTRBoxShape encompassingRectangle isWide.
	self
		assert: aTRBoxShape encompassingRectangle innerCorners class
		equals: Array.
	self
		assert: aTRBoxShape encompassingRectangle innerCorners size
		equals: 4.
	self
		assert: (aTRBoxShape encompassingRectangle innerCorners at: 1) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle innerCorners at: 2) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle innerCorners at: 3) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle innerCorners at: 4) class
		equals: Point.
	self
		assert: aTRBoxShape encompassingRectangle topCenter
		equals: 0 @ ( -5 / 2).
	self
		assert: aTRBoxShape encompassingRectangle topRight
		equals: 5 @ ( -5 / 2).
	self
		assert: aTRBoxShape encompassingRectangle bottomRight
		equals: 5 @ (5 / 2).
	self assert: aTRBoxShape encompassingRectangle center equals: 0 @ 0.
	self
		assert: aTRBoxShape encompassingRectangle topLeft
		equals:  -5 @ ( -5 / 2).
	self
		assert: aTRBoxShape encompassingRectangle bottom class
		equals: Fraction.
	self
		assert: aTRBoxShape encompassingRectangle bottom asString
		equals: '(5/2)'.
	self
		assert: aTRBoxShape encompassingRectangle floatCenter
		equals: 0.0 @ 0.0.
	self
		assert: aTRBoxShape encompassingRectangle leftCenter
		equals:  -5 @ 0.
	self assert: aTRBoxShape encompassingRectangle isRectangle.
	self
		assert: aTRBoxShape encompassingRectangle bottomLeft
		equals:  -5 @ (5 / 2).
	self
		assert: aTRBoxShape encompassingRectangle corners class
		equals: Array.
	self assert: aTRBoxShape encompassingRectangle corners size equals: 4.
	self
		assert: (aTRBoxShape encompassingRectangle corners at: 1) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle corners at: 2) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle corners at: 3) class
		equals: Point.
	self
		assert: (aTRBoxShape encompassingRectangle corners at: 4) class
		equals: Point.
	self
		assert: aTRBoxShape encompassingRectangle rightCenter
		equals: 5 @ 0.
	self assert: aTRBoxShape encompassingRectangle height equals: 5.
	originShape extent: 0 @ 0.
	OPRTElementsConstraint
		changeExtentOf: conformingShape
		like: originShape
		plus: 0 @ 0
]
