#!/bin/bash

echo "Monitoring disk space of EFI boot and root / directory"
sleep 3

# Monitoring free disk space of the root directory /
ROOT_SPACE=$(df -h | grep "/dev/sda2" | awk '{print $5}' | tr -d '%')

# Monitoring free disk space of the EFI boot partition
EFI_SPACE=$(df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d '%')

if [[ $ROOT_SPACE -ge 70 || $EFI_SPACE -ge 70 ]]; then
    echo "Disk space is running low:"
    if [[ $ROOT_SPACE -ge 70 ]]; then
        echo "On the root directory / (i.e., /dev/sda2)"
        echo "Disk space of /dev/sda2 is: $ROOT_SPACE%"
    fi
    if [[ $EFI_SPACE -ge 70 ]]; then
        echo "On /boot/efi (i.e., /dev/sda1)"
        echo "Disk space of /dev/sda1 is: $EFI_SPACE%"
    fi
else
    echo "Disk space is OK on both the root directory / (i.e., /dev/sda2) and /boot/efi (i.e., /dev/sda1)"
    echo "Disk space of /dev/sda2 is: $ROOT_SPACE%"
    echo "Disk space of /dev/sda1 is: $EFI_SPACE%"
fi

