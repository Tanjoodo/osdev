#!/bin/sh
set -e
. ./iso.sh

qemu-system-$(./target-triplet-to-arch.sh $HOST) -s -cdrom myos.iso&
gdb -tui -x attach.gdb
