# Higher Order Predicates in Prolog

**By Yadier Betancourt**

## Introduction

Higher order predicates are a very useful tool in Prolog for building generic and reusable predicates. They allow encapsulating common goals and applying them in a parametric way over lists. In this work, their application is studied for frequent operations on lists, which allows simplifying and improving the resulting Prolog code.

## Higher Order Predicates in Prolog

### Concept and Advantages

A higher order predicate is a predicate that takes another predicate as an argument. They allow treating predicates as data, passing them as arguments.

The advantages are:

- Code reuse: generic parametrizable predicates can be defined.
- Abstraction: common tasks are encapsulated in higher order predicates.
- Readability: frequent use predicates are simplified.
- Modularity: generic parts are separated from specific ones.

### Typical Applications

Some typical uses of higher order predicates in Prolog:

- Operations on data structures (lists, trees, etc)
- Search with parametrizable strategies.
- Generic traversals of data structures.
- Data filtering and transformation.

## Higher Order Predicates on Lists

### map/2 for property checking

map/2 predicate is defined to apply a single argument predicate to each element of a list and verify if all elements satisfy a given condition.

See `prolog/map.pl`

Examples of use:

- Check if all elements of a list are natural numbers
- Check if all elements of a list are variables
- Check if all words in a list are capitalized

See `examples/map_examples.pl`

### map/3 for predicate application

map/3 predicate is defined to apply a two argument predicate to each pair of elements from two lists at the same position and store the results in a third list.

See `prolog/map.pl`

Examples of use:

- Square each element of a list
- Translate numbers to text

See `examples/map_examples.pl`

### filter/3 and exclude/3 for filtering

filter/3 and exclude/3 predicates are defined for filtering operations. filter/3 takes a predicate and a list, and returns a list with elements that satisfy the predicate. exclude/3 takes a predicate and a list, and returns a list excluding elements that satisfy the predicate.

See `prolog/filter.pl`

Examples of use:

- Get even and odd numbers from a list

See `examples/filter_examples.pl`

### reduce/4

reduce/4 predicate is defined to apply a three argument predicate cumulatively to the elements of a list, starting with an initial accumulator value.

See `prolog/reduce.pl`

Examples of use:

- Sum and product of a list of numbers

See `examples/reduce_examples.pl`

## Other Application Examples

Additional examples:

- printlist/1: Print elements of a list
- allpairs/1: Check if all elements of a list are even
- translateRests/2: Get remainder of dividing list elements by 10 in Spanish
- opposites/2: Get opposite of each number in a list
- separateMultiplesN/4: Separate multiples and non-multiples of N in a list

See `examples/other_examples.pl`
