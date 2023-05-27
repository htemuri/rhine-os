#!/usr/bin/env bash
#

/home/htemuri/rhine-os/opt/cross/bin/i686-elf-gcc -c /home/htemuri/rhine-os/kernel/kernel.c -o /home/htemuri/rhine-os/kernel/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

/home/htemuri/rhine-os/opt/cross/bin/i686-elf-gcc -T linker.ld -o rhineos.bin -ffreestanding -O2 -nostdlib /home/htemuri/rhine-os/kernel/kernel.o  /home/htemuri/rhine-os/boot/boot.o -lgcc

/usr/bin/cp rhineos.bin /home/htemuri/rhine-os/isodir/boot/rhineos.bin

/usr/bin/grub-mkrescue -o rhineos.iso isodir
