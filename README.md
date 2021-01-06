# MyOS

Yet another hobbyist operating system

## Seeing the OS in action

Install QEMU and run `qemu-system-i386 -cdrom myos.iso` after `cd`ing into the root of this repo.

## Generating the ISO from source

Build a GCC cross-compiler `i686-elf-gcc` for i686-elf, make sure `grub-mkrescue` and `xorriso` are installed, then `cd` into the root of this repo and do:

```bash
$ i686-elf-as boot.s -o boot.o
$ i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
$ i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
$ mv myos.bin isodir/boot
$ grub-mkrescue -o myos.iso isodir
```

## Credits

[OSDev](https://wiki.osdev.org)

## TODO

Rename this repo once the direction of this project becomes clear.

## License

GPLv3 or any later version at your discretion
