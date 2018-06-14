#!/bin/bash
# ----------USERDATA: format and mount data disk----------
# ----------VARIABLES----------
type=ext4
mount_dir=/data
# ----------SCRIPT: donn't modify unless what you know what to do----------
mkfs.$type /dev/vdb
mkdir -p $mount_dir
echo "/dev/vdb $mount_dir $type defaults 0 0" >> /etc/fstab
mount -a
# ----------END: format and mount data disk----------
