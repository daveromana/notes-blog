---
layout: post
title: "Make notes"
date: 2014-10-27 12:44:03 -0500
comments: true
categories: 
---

Makefile basic structure
```
target: source
  command
```

Get the dependencies source for a given file.
```
gcc -M test.o
```

Continue making in case of errors
```
make -i
```

Multithreaded make
```
make -j N
```



diction - spell checker
