#!/bin/sh

QEMU_DEFAULT_OPTS="-enable-kvm -m 8G -cpu host -smp $(($(nproc) / 2)) -vga std"

if [ $# -ne 2 ]; then
    echo "Usage: $(basename "$0") [ISO] [HDD]"
    exit 1
fi

ISO="$1"
HDD="$2"

qemu-system-x86_64 \
    -cdrom "$ISO" \
    -boot order=d \
    -drive file="$HDD",format=qcow2 \
    $QEMU_DEFAULT_OPTS
