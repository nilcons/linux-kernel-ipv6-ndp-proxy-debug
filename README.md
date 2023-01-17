* Test environment

   +----------------+
/->|   Linux Host   |
|  +----------------+
|qemu-int  | qemu
|          |   <- NDP + ICMP echo
|          v eth0
|  +----------------+
|  |     QEMU       | <- here runs the new kernel
|  +----------------+
|          | eth1
\----------/
    ^
    \--- we should only have ICMP echo here
