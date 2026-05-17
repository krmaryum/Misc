#!/bin/bash

# create-linux-user.sh
# Cross-platform Linux user creation script

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or with sudo."
    exit 1
fi

read -p "Enter username: " USERNAME
read -p "Enter full name: " FULL_NAME
read -p "Enter room number: " ROOM
read -p "Enter work phone: " WORK_PHONE
read -p "Enter home phone: " HOME_PHONE
read -p "Enter other info: " OTHER

if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' already exists."
    exit 1
fi

GECOS="${FULL_NAME},${ROOM},${WORK_PHONE},${HOME_PHONE},${OTHER}"

useradd -m -s /bin/bash -c "$GECOS" "$USERNAME"

passwd "$USERNAME"

if getent group sudo >/dev/null; then
    usermod -aG sudo "$USERNAME"
elif getent group wheel >/dev/null; then
    usermod -aG wheel "$USERNAME"
else
    echo "No sudo or wheel group found. User created without admin group."
fi

echo ""
echo "User created successfully:"
grep "^$USERNAME:" /etc/passwd

echo ""
echo "Groups:"
groups "$USERNAME"

echo ""
echo "Home directory:"
ls -ld "/home/$USERNAME"