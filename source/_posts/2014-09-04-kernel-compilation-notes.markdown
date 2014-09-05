---
layout: post
title: "kernel compilation notes"
date: 2014-09-04 15:57:47 -0500
comments: true
categories: 
---

- Install KVM and it's dependencies.
- Create a Ubuntu VM using VMBuilder

```sh
sudo vmbuilder kvm ubuntu     \
    --arch i386               \
    --user ankit              \
    --name ankit              \
    --pass cracker            \
    --suite lucid             \
    --flavour virtual         \
    --addpkg openssh-server   \
    --libvirt qemu:///system
```
- **Basic Commands**

```sh
  arp -n # to find out what ip address was assined to the VM.

  virsh --connect qemu:///system list --all # to list all the vms

  virsh --connect qemu:///system start ubuntu # to start the vm with name ubuntu
```
- For clean shutdown install **acpid** inside the guest OS. `sudo apt-get install acpid`.

```
virsh --connect qemu:///system shutdown ubuntu # to shutdown the vm
```

#### Run the Virtual Machine using KVM

```
kvm -drive file=tmpYPpuMh.qcow2 --snapshot
```
> Figure out networking aspect while running using kvm




