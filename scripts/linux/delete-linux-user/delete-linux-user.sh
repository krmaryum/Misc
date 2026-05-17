#!/bin/bash

# delete-linux-user.sh
# Delete a Linux user safely

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or with sudo."
    exit 1
fi

read -p "Enter username to delete: " USERNAME

if ! id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' does not exist."
    exit 1
fi

read -p "Do you want to remove the home directory too? [y/N]: " REMOVE_HOME

if [[ "$REMOVE_HOME" =~ ^[Yy]$ ]]; then
    userdel -r "$USERNAME"
    echo "User '$USERNAME' and home directory deleted."
else
    userdel "$USERNAME"
    echo "User '$USERNAME' deleted. Home directory kept."
fi

echo ""
echo "Verification:"
if id "$USERNAME" &>/dev/null; then
    echo "User still exists."
else
    echo "User successfully removed."
fi