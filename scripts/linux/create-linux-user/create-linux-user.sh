#!/bin/bash

# -----------------------------------------------------------------------------
# Script Name : create-linux-user.sh
# Description : Create Linux users with optional sudo/admin access
# Features    : Supports Ubuntu/Debian and RHEL-based distributions
# Usage       : sudo ./create-linux-user.sh
# Author      : Khalid Khan
# -----------------------------------------------------------------------------

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

echo ""
read -p "Do you want to give sudo/admin access? (y/n): " ADMIN_ACCESS

if [[ "$ADMIN_ACCESS" =~ ^[Yy]$ ]]; then
    if getent group sudo >/dev/null; then
        usermod -aG sudo "$USERNAME"
        echo "User added to sudo group."
    elif getent group wheel >/dev/null; then
        usermod -aG wheel "$USERNAME"
        echo "User added to wheel group."
    else
        echo "No sudo/wheel group found."
    fi
else
    echo "Creating normal user without admin privileges."
fi

echo ""
read -p "Enter an additional group name (optional): " GROUP_NAME

if [ -n "$GROUP_NAME" ]; then
    if getent group "$GROUP_NAME" >/dev/null; then
        usermod -aG "$GROUP_NAME" "$USERNAME"
        echo "User added to group '$GROUP_NAME'."
    else
        echo "Group '$GROUP_NAME' does not exist."
        echo "User created without additional group."
    fi
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