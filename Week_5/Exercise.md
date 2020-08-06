# Learning JavaScript - Week 7

File used to complete this exercise can be found [here.](https://hackmd.io/kMNgXiPHQf2Q_P9A-tnS9A)

## Exercise 1, 2, 3

Think about Ruby. Make a list of all the bits of Ruby you can think of.
 - Classes (class MyClass)
 - Arithmetics (_Add_ 1+1, _Subtraction_(2-1), _Multiply_(2*2), _Divide_(4/2), _Modulo_(2%2))
 -- Logical conditions (&&, ||, !, ==)
 - [Methods](https://ruby-doc.org/core-2.7.0/Array.html) 
 - Boolean( True/False)
 - Arrays []
 - Strings (' ')
 - Intergers
 - Variables (_local_ (a = 5), _Instance_(@something), _class variable_(@@something), _global variable_($something))
 - Hashes { key & value - _ie_ something => thing}
 - Parameters, Arguments ()
 - Initialize (def initialize)
 - Attr_readers, writers, accessors (attr_writer, attr_accessor)
 - Private and Public methods
 - TDD, BDD, RSpec
 - [Range](https://ruby-doc.org/core-2.7.0/Range.html)
 - Instanciation ( .new)
 - [Objects](https://ruby-doc.org/core-2.7.0/Object.html)
 - Double, mocking
 - Let
 - Scope
 - Dependency inversion (@injections)
 - Symbols( :)
 - Self (self.all)
 - Control-flow (if, elsif.., else...)
 - Ternary (?:  - _i.e_ apple_stock > 1 ? eat_apple : buy_apple)
 - Edge cases
 - Constants
 - include?
 - While loop
 - Modules

## Exercise 2
Sort the list in order of importance. Don’t think about it too much, just whatever feels most important to you to learn. You can always re-order it.


JS- can do one thing/run one code at a time (singke threaded)
Heap - where memory allocation happens
Stack - execution context

**Call Stack**: Data structure which records where in the programme we are. 

> If we step into a function, we push something onto stack
> If we return from a funtion, we pop of from the top
[![Image from Gyazo](https://i.gyazo.com/3ea4f046b7fd214455a93b9df07bea74.png)](https://gyazo.com/3ea4f046b7fd214455a93b9df07bea74)

[![Image from Gyazo](https://i.gyazo.com/dddd617fb7d76a36eb131330a0d674e5.png)](https://gyazo.com/dddd617fb7d76a36eb131330a0d674e5)

###Blocking
When something is slow e.g, doing a while loop on something 1000x is slow.


