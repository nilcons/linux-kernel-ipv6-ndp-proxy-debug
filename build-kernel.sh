#!/bin/bash

set -euo pipefail

cd net-next
make x86_64_defconfig
make kvm_guest.config
echo CONFIG_DUMMY=y >kernel/configs/dummy.config
make dummy.config
make -j4
