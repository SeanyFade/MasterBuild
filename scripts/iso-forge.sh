#!/bin/bash

# 1. Pick the ISO file using wofi
ISO=$(zenity --file-selection --file-filter="*.iso" --title="Select ISO File")
[ -z "$ISO" ] && exit

# 2. Pick the Target Drive (filters out your main system disk)
DRIVE=$(lsblk -dno NAME,SIZE,MODEL | grep -v "nvme0n1" | wofi --show dmenu --prompt "FORGE YOUR OS!" | awk '{print $1}')
[ -z "$DRIVE" ] && exit

# 3. Run the flash in a terminal so you can see progress
alacritty -e sudo dd if="$ISO" of=/dev/"$DRIVE" bs=4M conv=fsync oflag=direct status=progress

