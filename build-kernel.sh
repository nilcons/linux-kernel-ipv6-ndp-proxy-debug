#!/bin/bash

set -euo pipefail

cd net-next
make x86_64_defconfig
make kvm_guest.config
make -j4
