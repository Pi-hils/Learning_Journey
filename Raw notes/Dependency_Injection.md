# Dependency Injection 

## What is Dependency Injection?
_Literal meaning_
- _Dependency_ : Denpendenncy or to be dependent means to rely on something for support. 
In programming, this is another Object that your class needs in order to function.

It decouples your classes construction, from the construction of it's dependency.

When class A uses some methods of class B, we can say class A has a dependency of class B.


 ## Inject Dependencies
 The dependency is pushed into the class from the outside. No need to instanciate dependency using new operatior from insoide the class. Take it as a constructor parameter.

[![Image from Gyazo](https://i.gyazo.com/62957b820aaa88a71056824a0d0a23c9.png)](https://gyazo.com/62957b820aaa88a71056824a0d0a23c9)

---

 ## Analogy 1 - WHY
 Constructed a robot that is programmed to build walls, however it gets to a door way. You can
 - 1. Programme it to build a custom wall each time out of raw material
 or
 - 2. Programme it to get ready-made door from a supplier and install.

 Easiest is **2**, get a ready-made door from a supplier.

 That is dependency Injection does, decouple classes construction from the construction of it's dependency. 

 This makes it inportant due to the Dependency Inversion Principle.

  ## Analogy 2
A car class which contains various objects such as wheels, engine, etc.

The car class is responsible for creating all the dependency objects. Here the car class is responsible for crating all the dependency objects. Now, what if we decide to ditch MRFWheels in the future and want to use Yokohama Wheels?

We will need to recreate the car object with a new Yokohama dependency. When using dependency injection(DI), we can change the Wheels at runtime(because dependency can be injected at runtime rather the=an at compile time).

DI can be seen as the middle-man in our code who does all the work of creating a preferred Wheel(class Object) and providing it to a Car class.


---

### Dependency Inversion Principle
 - is the principle that code should depend upon obstructions. By depending upon obstructions, we are decoupling implementation from each other.
 - With that, we can substitute other dependencies, as long as they satisfy the the required interface
 -We decouple from lower level implementations

 [![Image from Gyazo](https://i.gyazo.com/2469c6cbbcc281072fc416fd6d57ed75.png)](https://gyazo.com/2469c6cbbcc281072fc416fd6d57ed75)

 ## Benefit
 - Cleaner code
 - Easier to modify
 - Easier to reuse

