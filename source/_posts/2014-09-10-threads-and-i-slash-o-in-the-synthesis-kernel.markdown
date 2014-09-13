---
layout: post
title: "Threads and Input/Output in the Synthesis Kernel"
date: 2014-09-10 22:22:42 -0500
comments: true
categories: 
---

Synthesis operating system kernel combines several techniques to provide high performance, including kernel code synthesis, fine grain scheduling and optimistic synchronization.

Goals:
1. High performance
2. self-tuning capability to dynamic load and configuration changes
3. a simple, uniform and intuitive model of computation with a high-level interface

### Kernel Code Synthesis

3 methods:
1. Factoring invariants: bypasses redundant computations.
2. The Collapsing layer method eliminates unnecessary procedure calls and context switches, both vertically for layered modules and horizontally for pipelined threads.
3. The executable data structure method shorten the data structure traversal time when DS is travelled always the same way.


