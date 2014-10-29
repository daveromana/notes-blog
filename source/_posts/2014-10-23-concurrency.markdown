---
layout: post
title: "concurrency"
date: 2014-10-23 12:38:21 -0500
comments: true
categories: os concurrency
---

* Determinism doesn't effectively solves the problem.
* Symbolic execution


Transactions and Concurrency
---

# ACID

**Atomicity:** All or nothing. Log to clean if system fails. Output commit -> you are screwed.
**Consistency:** Internal consistency of the database.
**Isolation:** Executes if it were running along.
**Durability:** Results will not be lost.

Memory Transactions: no guarantee, what if power goes down.

---

Isolation: some serial execution this is equivalent to.
Serializability: One approach to isolation - not dominant. Linearizability is dominant.

Transactions: 2-phase commit, 2-phase locking.



