---
layout: post
title: "xen - the art of virtualization"
date: 2014-09-23 13:03:46 -0500
comments: true
categories: xen
---

Domain 0 - is a VM. Device drivers are put inside domain 0.

write a block of data ==> goes to VMM ==> goes to VM (converting it to actual blocks).

---
Not XEN RELATED
Hardware virtualization
system calls and page faults don't trap.


VA - PT - PA

VMWare
VA - Shadow PT - MA
PA - PMAP - MA



Shadow tables - per guest application. Since it maps from VA.
PMAP is per guest OS

Extended page table - per VM or per guest.

A VM has well defined PA space

Two ways of VMM

Build it into operating system.
OS like explicitly running.

ESX server(special purpose VMM) vs ESX workstation (general purpose os)


Double Paging - two different pieces of software working on it.

Force guest OS to use it's own paging algorithm
