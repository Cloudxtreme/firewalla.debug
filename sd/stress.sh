#/bin/bash

rm -r -f DISK
rm -r -f DISK.run
mkdir DISK.run
touch DISK
truncate -s 1G DISK
mke2fs -t ext4 -F DISK
sudo mount DISK DISK.run
sudo chmod 777 DISK.run

./stressdisk cycle DISK.run
