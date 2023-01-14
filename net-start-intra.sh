#!/bin/bash

ip link set dev qemu-intra multicast off
echo 0 >/proc/sys/net/ipv6/conf/qemu-intra/router_solicitations
ip link set dev qemu-intra up

