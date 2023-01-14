#!/bin/bash

ip link set dev qemu multicast off
ip link set dev qemu address e2:0b:22:02:b4:37
echo 0 >/proc/sys/net/ipv6/conf/qemu/router_solicitations
ip neigh add fe80::e00b:22ff:fe02:b438 dev qemu lladdr e2:0b:22:02:b4:38 extern_learn
ip link set dev qemu up
ip addr add 2a02:dead:beef::1/48 dev qemu
