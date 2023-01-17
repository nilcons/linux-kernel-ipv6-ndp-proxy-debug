#!/bin/bash

set -euo pipefail

mkdir -p mnt
qemu-img create qemu.img 10g
mkfs.ext4 qemu.img
mount -o loop qemu.img mnt
debootstrap --arch amd64 bullseye mnt
chroot mnt apt-get install -y tcpdump
cp rc.local mnt/etc/rc.local
chmod 0755 mnt/etc/rc.local
chown root.root mnt/etc/rc.local
# TODO: pwchange
umount mnt
