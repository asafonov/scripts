G="G"
if [ $# -ne 1 ]; then
    swapsize=2
else
    swapsize=$1
fi
fallocate -l $swapsize$G /swap
swapbytes=$((swapsize*1048576))
dd if=/dev/zero of=/swap bs=1024 count=$swapbytes
mkswap /swap
swapon /swap
echo "/swap  none  swap  sw 0  0" >> /etc/fstab
