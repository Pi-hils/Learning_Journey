# [RSpec](https://semaphoreci.com/community/tutorials/getting-started-with-rspec)
_What_: RSpec is a testing tool for Ruby, made for Behaviour Driven Development(BDD). It is frequently used in Ruby during production applications.

## Understanding TDD
In order to understand RSpec, we need to understand BDD and its parent, TDD (**Test Driven Development**). The idea of TDD is that instead of writing tests for codes already available, we work in a **red-green loop**:

_How_: 
1. **Write the smallest possible test** case that matches what we need to program.
2. **Run the test, watch it fail**. This is the start of thinking  and developing a code that would make it work.
3. Write some code to **make it pass**, run the test, repeat till the test pass.
4. Go back and **refactor** your new code, making it as simple and clear as possible while keeping the test suite green.

## **Understanding BDD (Behaviour-driven development)**
BDD is an idea which was built on TDD. This idea was to write tests as specifications of system behaviour, a different way of approaching the exact challenge, which leads us to think more clearly and write tests that are easier to understand and maintain. 
Start off small, little by little, and hone in on the important information.

- With RSpec, we can get a little more verbose by describing behaviour to clarify.

## Approaching RSpec
- Create a directory called spec ("specifications")- this is where you will write your RSpec. Inside this folder, create a file and name with the ending _spec.rb.

- In the _spec.rb, start by _describing_ the behaviour of the classes, modules & their methods. The _**describe**_ block always comes first in the spec file, followed by a class name.


## [Intro to User story](https://github.com/makersacademy/course/blob/master/pills/user_stories.md)
User stories comprise of three sections: _Stakeholder, Motivation and Task_
[![Image from Gyazo](https://i.gyazo.com/04ad13cc7993af4e3ddf86282b085b1e.png)](https://gyazo.com/04ad13cc7993af4e3ddf86282b085b1e)

---

## README Essential

Minimum content to have in your README
1. What is the programme doing.
2. How to run and install.
3. How to run the test.