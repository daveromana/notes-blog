---
layout: post
title: "Concurrent Objects"
date: 2014-11-17 18:40:16 -0600
comments: true
categories: os
---

Method calls take time whereas method calls by a single thread are always sequential.

### Quiescent Consistency

1. Method calls should appear in one-in-a-time sequential order. --| **trivial** |
2. Method calls separated by a period of quiescence should appear to take effect in real-time order.

```
# not quiescent

Thread A --------------------|    r.write(7)    |---------------------------------------->

Thread B ---------------------- |  r.write(-3)    |-----------| r.read(-7) |------------->

---------------------------------------------------- ******* -----------------------------

****** period of quiescence
```

1. Property one ensures that we read a valid value. However one can read the old value always.
2. So in the above example, we should either read 7 or 3 since there's a period of quiescence

#### Properties

- non blocking
- compositional


---
