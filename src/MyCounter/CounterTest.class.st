Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAllMethods [

	| c |
	c := Counter startingAt: 5.
	self assert: (c increment; count) equals: 6
]

{ #category : 'tests' }
CounterTest >> testCounterIsSetAndRead [

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 2.
	c decrement; decrement.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 2.
	c increment; increment.
	self assert: c count equals: 4
]

{ #category : 'tests' }
CounterTest >> testInitialize [

	| c |
	c := Counter new.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testSetAndGetCounter [
	self assert: (Counter new count: 22) count equals: 22
]

{ #category : 'tests' }
CounterTest >> testStartingAtFive [
	| c |
	c := Counter startingAt: 5.
	self assert: c count equals: 5
]
