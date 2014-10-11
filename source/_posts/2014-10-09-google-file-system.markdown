---
layout: post
title: "Google File System"
date: 2014-10-09 12:37:40 -0500
comments: true
categories:
---

Problem in datacenters: failures.

**Master**: Single point of failure, master has log of operations.

Lease: soft state.

Revoke:

1. wait
2. contact server

---

Snapshot:

1. revoke lease
2. copy-on-write

snapshot on large files:-> copy on writes.

Contact replicas and tell them to make local copies. Update the metadata to point to the individual chunks.

- distributed the consistency to both application libraries.
- unique identifier could be a problem.

chunks metadata at master are not persisted.


Appends are ordered:

1) lease and primary
2) primary serial #'s

Master doesn't know about the namespaces either, it is also stored on chunkservers.

- No hardlinks/softlinks
- absolute paths
- no datastructure representing directories like inodes
- no datastructure to enumerate contents of one directory
- 
