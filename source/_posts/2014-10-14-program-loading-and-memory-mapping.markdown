---
layout: post
title: "program loading and memory mapping"
date: 2014-10-14 15:40:27 -0500
comments: true
categories: os lab memory loading
---

System Calls:

Old way of doing system calls


`arch_prctl(ARCH_SET_FS, addr)`
---

From man page:
> set architecture specific thread state

- `ARCH_SET_FS`: set the 64-bit base address for the `FS` register to `addr`

    Earlier kernel used to store an array indexed by threadid containing address of thread space, however now it sets the FS register for threads local storate.
    `GS` is used for kernel threads storage pointer whereas `FS` is used for userspace threads.


Links for ELF
---

1. http://articles.manugarg.com/aboutelfauxiliaryvectors.html

