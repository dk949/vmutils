#!/bin/sh
if [ $# -ne 2 ]; then
    echo "Usage: $(basename "$0") [NAME] [CAP]"
    exit 1
fi

NAME="$1"
CAP="$2"

qemu-img create -f qcow2 "$NAME" "$CAP"
