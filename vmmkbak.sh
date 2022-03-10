if [ $# -ne 2 ]; then
    echo "Usage: $(basename "$0") [BASE] [NEW]"
    exit 1
fi

BASE=$1
NEW=$2

qemu-img create -o backing_file="$BASE",backing_fmt=qcow2 -f qcow2 "$NEW"
