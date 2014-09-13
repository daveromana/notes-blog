---
layout: post
title: "Precise Miss Analysis for Program Transformation with Caches of Arbitrary Associativity"
date: 2014-09-13 14:01:54 -0500
comments: true
categories: 
---

**Source**: http://mrmgroup.cs.princeton.edu/papers/ghosh_asplos98.pdf <br/>
**Published**: 1998

Currently the gap between memory and processor is addressed by compile- and programmer- applied optimizations like matrix blocking, data structure padding and other program transformations.

This paper defined a CME (cache miss equation framework) which expresses memory references and cache conflict behavious in terms of set of equations.

Two main approaches to automatically improve data locality for loop-oriented programs:

1. **Loop nest restructuring** - *includes* permutation, tiling (parition loop space into chunks), fusion are used to reorder access patterns. These transformation have usually considered capacity misses in the past, however there could be conflict misses which are difficult to identify and are highly sensitive to problem size and base addresses.
2. **data layout optimizations** - padding to the data structures.

---

CMEs are a system of **linear Diophantine equations**
