MBR
---
This code is supposed to be run on a bare x86_64 at boot time.

## Makefile capabilities
The repository's Makefile contains instructions for compiling the assembly code into a Master Boot Record with no partition information.
The Makefile also contains instructions for running the code on a qemu virtual machine.

## What is done
Currently the code only prints my name on the screen using [BIOS video interrupts](https://en.wikipedia.org/wiki/BIOS_interrupt_call#Interrupt_table).

## Reminder
Please use the filters for block:
``` shell
git config filter.xxd.clean xxd
git config filter.xxd.smudge 'xxd -r'
```
