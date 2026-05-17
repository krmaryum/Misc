# Delete Linux User Script

## Overview

This Bash script safely deletes Linux users across multiple Linux distributions including:

- Ubuntu
- Debian
- Fedora
- CentOS
- Rocky Linux
- AlmaLinux
- WSL Ubuntu

The script supports:
- User existence verification
- Optional home directory removal
- Safe deletion confirmation
- Post-deletion verification

---

# Script File

```text
delete-linux-user.sh
```

---

# Script Source

```bash
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
```

---

# Features

- Cross-platform compatible
- Interactive deletion process
- Optional home directory removal
- Safe user verification
- Root privilege validation
- Supports WSL and Linux systems

---

# Requirements

- Linux or WSL environment
- Root or sudo privileges
- Bash shell

---

# Save Script

Save the script as:

```bash
delete-linux-user.sh
```

---

# Give Execute Permission

```bash
chmod +x delete-linux-user.sh
```

---

# Run Script

```bash
sudo ./delete-linux-user.sh
```

---

# Example

## Input

```text
Enter username to delete: ali
Do you want to remove the home directory too? [y/N]: y
```

## Output

```text
User 'ali' and home directory deleted.

Verification:
User successfully removed.
```

---

# Verify User Deletion

## Check user

```bash
cat /etc/passwd | grep ali
```

If no output appears, the user was deleted successfully.

---

# Verify Home Directory

```bash
ls /home
```

If the home directory was removed, the user folder will not exist.

---

# Command Explanation

| Command | Purpose |
|---|---|
| `userdel` | Deletes Linux user |
| `userdel -r` | Deletes user and home directory |
| `id username` | Checks if user exists |
| `grep` | Searches user entries |
| `sudo` | Runs script with administrative privileges |

---

# Security Notes

- Always verify the username before deletion
- Removing the home directory deletes all user files permanently
- Use `userdel -r` carefully
- Run only with proper administrative access

---

# Supported Platforms

| Platform | Supported |
|---|---|
| Ubuntu | Yes |
| Debian | Yes |
| Fedora | Yes |
| CentOS | Yes |
| Rocky Linux | Yes |
| AlmaLinux | Yes |
| WSL Ubuntu | Yes |

---

# Troubleshooting

## Permission Denied

```text
Please run as root or with sudo.
```

Solution:

```bash
sudo ./delete-linux-user.sh
```

---

## User Does Not Exist

```text
User 'ali' does not exist.
```

Solution:
- Verify username spelling
- Check existing users

---

# Learning Objectives

This script helps practice:

- Linux user management
- Bash scripting
- Conditional statements
- User verification
- Administrative privilege handling
- Linux account removal

---

# Conclusion

This script provides a safe and reusable method for deleting Linux users across multiple Linux environments while supporting optional home directory cleanup and user verification.

---

# Author

Khalid Khan

GitHub:
https://github.com/krmaryum
