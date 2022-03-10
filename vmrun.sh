
QEMU_DEFAULT_OPTS="-enable-kvm -m 8G -cpu host -smp $(($(nproc) / 2)) -vga std"

if [ $# -ne 1 ]; then
    echo "Usage: $(basename "$0") [HDD]"
    exit 1
fi

HDD="$1"

qemu-system-x86_64 \
    -boot order=c \
    -drive file="$HDD",format=qcow2 \
    $QEMU_DEFAULT_OPTS
