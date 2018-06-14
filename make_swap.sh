#!/bin/bash
# ----------USERDATA: make swap----------
# ----------VARIABLES----------
# swap size in MiB
SWAP_SIZE=1024

# swap file
SWAP_FILE=/swap

# ----------SCRIPT: donn't modify unless what you know what to do----------
dd if=/dev/zero of=$SWAP_FILE bs=1048576 count=$SWAP_SIZE
chmod 0600 $SWAP_FILE
mkswap $SWAP_FILE
echo "$SWAP_FILE swap swap defaults 0 0" >> /etc/fstab
swapon $SWAP_FILE
# ----------END: make swap----------
