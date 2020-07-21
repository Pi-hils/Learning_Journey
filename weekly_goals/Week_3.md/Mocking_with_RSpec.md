# Mocking with RSpec: Doubles & Expectations.

## Why use Mocking?
- As a replacement for objects that don't exist yet.
- When working with a non-deterministic values /depends on the RSS feeds from a server.
- To avoid setting up a complex scheme of data/dependency objects in order to write a test.
- To avoid invoking code which would degrade the performance of the test, while at the same time being unrelated to the test being written.

By **mocking** objects in advamce, you can allow yourself to focus on the important things you are working on at the current moment. For example, you are working on a new part of a system, and you realize that the code you're currently describing and implementing will need 2 new collaborating objects. With mocks, you can define their interfaces as you write a spec fpr the code you're working on.

That way you maintain a clean environment by having all your tests pass, before moving on to implement the collaborating objects.

Without mocks, you will be required to quickly start writing the implementation for the collaborating objects, before having your tests pass. This can be distracting and may leaf to poor code design decisions.

Mocking helps by reducing the number of things we need to keep track of at the given moment.

