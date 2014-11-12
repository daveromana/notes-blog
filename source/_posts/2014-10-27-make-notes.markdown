---
layout: post
title: "Make notes"
date: 2014-10-27 12:44:03 -0500
comments: true
categories: make shell
---

Makefile basic structure
```
target: source
  command
```

PHONY prevents `rm` to be executed each time, `make clean` is called. Consider a case when there are no `.o` files, `make clean` will still execute `rm` otherwise.
```
.PHONY
clean:
  rm *.o
```

Get the dependencies source for a given file.
```
gcc -M test.cpp

# better
g++ -MM main.cpp -std=gnu++11

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
