#!/bin/bash

qemu-system-x86_64 \
	-kernel linux-6.2-rc3/arch/x86/boot/bzImage \
	-append "root=/dev/sda console=ttyS0 net.ifnames=0 rw" \
	-drive file=qemu.img,index=0,media=disk,format=raw \
	-netdev tap,id=internet,ifname=qemu,script=./net-start.sh,downscript=no -device e1000,netdev=internet \
	-netdev tap,id=intranet,ifname=qemu-intra,script=./net-start-intra.sh,downscript=no -device e1000,netdev=intranet \
	--nographic
