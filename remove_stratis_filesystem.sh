#!/bin/bash

#get's user input
read -p "Enter the name of the Stratis filesystem you want to remove: " filesystem_name
read -p "Enter the pool name associated with the filesystem: " pool_name
read -p "Enter the mount path: " mount_path
read -p "Enter the snapshot associated with the filesystem: " filesystem_snapshot

#confirmation of input

echo "you are about to remove the following:"
echo "Filesystem: $filesystem_name"
echo "Pool: $pool_name"
echo "Mount path:  $mount_path"
echo "Snapshot: $filesystem_snapshot"
read -p "Are you sure you want to proceed? (y/n): " confirm

if [[ $confirm  != [Yy]* ]]; then
	echo "Operation cancelled."
	exit 1
fi

sudo umount $mount_path
sudo stratis filesystem destroy $pool_name $filesystem_name
sudo stratis filesystem destroy $pool_name $filesystem_snapshot
sudo stratis pool destroy $pool_name
sudo sed -i "/\/stratis\/${pool_name}\/${filesystem_name}/d" /etc/fstab
rm -rf $mount_path

echo "Current block device information:"
lsblk

echo "Success! Stratis removed:"


