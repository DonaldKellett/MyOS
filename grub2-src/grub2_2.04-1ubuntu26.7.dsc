-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: grub2
Binary: grub2, grub-linuxbios, grub-efi, grub-common, grub2-common, grub-emu, grub-emu-dbg, grub-pc-bin, grub-pc-dbg, grub-pc, grub-rescue-pc, grub-coreboot-bin, grub-coreboot-dbg, grub-coreboot, grub-efi-ia32-bin, grub-efi-ia32-dbg, grub-efi-ia32, grub-efi-ia32-signed-template, grub-efi-amd64-bin, grub-efi-amd64-dbg, grub-efi-amd64, grub-efi-amd64-signed-template, grub-efi-ia64-bin, grub-efi-ia64-dbg, grub-efi-ia64, grub-efi-arm-bin, grub-efi-arm-dbg, grub-efi-arm, grub-efi-arm64-bin, grub-efi-arm64-dbg, grub-efi-arm64, grub-efi-arm64-signed-template, grub-ieee1275-bin, grub-ieee1275-dbg, grub-ieee1275, grub-firmware-qemu, grub-uboot-bin, grub-uboot-dbg, grub-uboot, grub-xen-bin, grub-xen-dbg, grub-xen, grub-xen-host, grub-yeeloong-bin, grub-yeeloong-dbg, grub-yeeloong, grub-theme-starfield, grub-mount-udeb
Architecture: any
Version: 2.04-1ubuntu26.7
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Felix Zielcke <fzielcke@z-51.de>, Jordi Mallach <jordi@debian.org>, Colin Watson <cjwatson@debian.org>, Ian Campbell <ijc@debian.org>, Steve McIntyre <93sam@debian.org>
Homepage: https://www.gnu.org/software/grub/
Standards-Version: 3.9.6
Vcs-Browser: https://git.launchpad.net/~ubuntu-core-dev/grub/+git/ubuntu
Vcs-Git: https://git.launchpad.net/~ubuntu-core-dev/grub/+git/ubuntu
Build-Depends: debhelper (>= 10~), patchutils, dh-autoreconf, dh-systemd, automake, python3, flex, bison, po-debconf, help2man, texinfo, gcc-8, gcc-8-multilib [i386 kopensolaris-i386 any-amd64 any-ppc64 any-sparc], xfonts-unifont, libfreetype6-dev, gettext, libdevmapper-dev [linux-any], libgeom-dev (>= 8.2+ds1-1~) [kfreebsd-any] | libgeom-dev (<< 8.2) [kfreebsd-any], libsdl1.2-dev [!hurd-any], xorriso, qemu-system [i386 kfreebsd-i386 kopensolaris-i386 any-amd64], cpio [i386 kopensolaris-i386 amd64 x32], parted [!hurd-any], libfuse-dev (>= 2.8.4-1.4) [linux-any kfreebsd-any], ttf-dejavu-core, liblzma-dev, dosfstools [any-i386 any-amd64 any-arm64], mtools [any-i386 any-amd64 any-arm64], wamerican, libparted-dev [any-powerpc any-ppc64 any-ppc64el], pkg-config, bash-completion, libefiboot-dev [any-linux-i386 any-linux-amd64 any-linux-ia64 any-linux-arm any-linux-arm64], libefivar-dev [any-linux-i386 any-linux-amd64 any-linux-ia64 any-linux-arm any-linux-arm64]
Build-Conflicts: autoconf2.13, libnvpair-dev, libzfs-dev
Package-List:
 grub-common deb admin optional arch=any
 grub-coreboot deb admin optional arch=any-i386,any-amd64
 grub-coreboot-bin deb admin optional arch=any-i386,any-amd64
 grub-coreboot-dbg deb debug optional arch=any-i386,any-amd64
 grub-efi deb oldlibs optional arch=any-i386,any-amd64
 grub-efi-amd64 deb admin optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-bin deb admin optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-dbg deb debug optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-signed-template deb admin optional arch=amd64
 grub-efi-arm deb admin optional arch=any-arm
 grub-efi-arm-bin deb admin optional arch=any-arm
 grub-efi-arm-dbg deb debug optional arch=any-arm
 grub-efi-arm64 deb admin optional arch=any-arm64
 grub-efi-arm64-bin deb admin optional arch=any-arm64
 grub-efi-arm64-dbg deb debug optional arch=any-arm64
 grub-efi-arm64-signed-template deb admin optional arch=arm64
 grub-efi-ia32 deb admin optional arch=any-i386,any-amd64
 grub-efi-ia32-bin deb admin optional arch=any-i386,any-amd64
 grub-efi-ia32-dbg deb debug optional arch=any-i386,any-amd64
 grub-efi-ia32-signed-template deb admin optional arch=i386
 grub-efi-ia64 deb admin optional arch=any-ia64
 grub-efi-ia64-bin deb admin optional arch=any-ia64
 grub-efi-ia64-dbg deb debug optional arch=any-ia64
 grub-emu deb admin optional arch=any-i386,any-amd64,any-powerpc
 grub-emu-dbg deb debug optional arch=any-i386,any-amd64,any-powerpc
 grub-firmware-qemu deb admin optional arch=any-i386,any-amd64
 grub-ieee1275 deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-ieee1275-bin deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-ieee1275-dbg deb debug optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-linuxbios deb oldlibs optional arch=any-i386,any-amd64
 grub-mount-udeb udeb debian-installer optional arch=linux-any,kfreebsd-any
 grub-pc deb admin optional arch=any-i386,any-amd64
 grub-pc-bin deb admin optional arch=any-i386,any-amd64
 grub-pc-dbg deb debug optional arch=any-i386,any-amd64
 grub-rescue-pc deb admin optional arch=any-i386,any-amd64
 grub-theme-starfield deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64,any-mipsel,any-ia64,any-arm,any-arm64
 grub-uboot deb admin optional arch=any-arm
 grub-uboot-bin deb admin optional arch=any-arm
 grub-uboot-dbg deb debug optional arch=any-arm
 grub-xen deb admin optional arch=i386,amd64
 grub-xen-bin deb admin optional arch=i386,amd64
 grub-xen-dbg deb debug optional arch=i386,amd64
 grub-xen-host deb admin optional arch=i386,amd64
 grub-yeeloong deb admin optional arch=any-mipsel
 grub-yeeloong-bin deb admin optional arch=any-mipsel
 grub-yeeloong-dbg deb debug optional arch=any-mipsel
 grub2 deb oldlibs optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub2-common deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64,any-mipsel,any-ia64,any-arm,any-arm64
Checksums-Sha1:
 3ed21de7be5970d7638b9f526bca3292af78e0fc 6393864 grub2_2.04.orig.tar.xz
 d6df202a9bfa89abe2d7f288c1d438197c6f371a 833 grub2_2.04.orig.tar.xz.asc
 d73ff8eeea65fb590a407782594784eeb68882bc 1146564 grub2_2.04-1ubuntu26.7.debian.tar.xz
Checksums-Sha256:
 e5292496995ad42dabe843a0192cf2a2c502e7ffcc7479398232b10a472df77d 6393864 grub2_2.04.orig.tar.xz
 955cc63196020e3a70dbb1834ec8b6a1808b1100bc878431c52aa0dd7e6a2532 833 grub2_2.04.orig.tar.xz.asc
 2a58ca772f43166ca8cd712b6f881f98c0d84fb5dfe081c44c6953088ec1e8af 1146564 grub2_2.04-1ubuntu26.7.debian.tar.xz
Files:
 5aaca6713b47ca2456d8324a58755ac7 6393864 grub2_2.04.orig.tar.xz
 f080a242eaee83db7640658430a0b93d 833 grub2_2.04.orig.tar.xz.asc
 086f684e4a62b336ada7eff8e69d8908 1146564 grub2_2.04-1ubuntu26.7.debian.tar.xz
Original-Maintainer: GRUB Maintainers <pkg-grub-devel@alioth-lists.debian.net>

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEECfR9vy0y7twkQ+vuG/g8XlT8hkAFAl+u8L8RHGRhbm5mQGRl
Ymlhbi5vcmcACgkQG/g8XlT8hkCS8A/6AnLanvLAO/sjbbN6JUZH5s90vtu7ZN6/
FKdva1CoF0E/tXXDzqasfpE3yuok/x8vI3MG5Mn19PXUvEURSab1EoqY2H2oZwb6
Sj4qNDIbNRnQbJNREjBJWFTwuc7cZHB8r2Snno8x2uVG4Lxddyk8lj2TAlKyYuQC
uoqmYiEDzwZRDTg9M5KEk29jfXID0uDaTxo0UPp2AVkyTeIrLPb9k7WUjlZuZoEP
l4sphxOZqelA5jhMapAZdSHC+nV7l0ZYQmBtEjr/nsyTlSI4+vthX53gpJQVybbd
r/eN/s8z6J8Gatt2daPZeFmCGczSUdf2OxzHOt7viejDZsz///7mVjYZ4dn+f6ZI
pWBTcnsH8i3eJs73RvLDFPX8slXT9dNLx+4Mu8nEW7ef8/rsG4TrQk+4y6H6OT0c
jmg0zkeQ53GzH9GIQaK54WHNHlg0eHISsKvG5R3TKMTx5S/brLr/T+IBvMEcmkcx
3EIHp5b/kxG5+35h63dCgFu1V6ByeUOWhKECCnrzhduSgQf+25aBZLiIu0F7h3DO
estEwvvh2tJFEUEnVQZ+OhEw0lh8mbayu0mCFsvBPDS7J0+K9aERXHCNfniukSNa
HSpUAF8k4p4e7U6SDo6G09eS/FAX/bHF9Y/qAsKhLCzrs1Y15EfdebZHWpudBAJf
xz+1YnEU7Yo=
=OE/O
-----END PGP SIGNATURE-----
