#!/bin/bash

set -euo pipefail

# tar xvfz linux-6.2-rc3.tar.gz
cd linux-6.2-rc3
make x86_64_defconfig
make kvm_guest.config
make -j4
