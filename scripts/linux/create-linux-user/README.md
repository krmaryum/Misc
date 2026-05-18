# Create Linux User Script

A cross-platform Bash script to create Linux users with optional sudo/admin privileges and additional group assignment.

---

## Features

- Create normal Linux users
- Optional sudo/admin access
- Supports Ubuntu/Debian (`sudo` group)
- Supports RHEL/CentOS/Rocky Linux (`wheel` group)
- Optional additional group assignment
- Validates group existence before adding users
- Automatically creates home directory
- Sets `/bin/bash` as default shell
- Supports GECOS user information

---

## Supported Distributions

- Ubuntu
- Debian
- CentOS
- RHEL
- Rocky Linux
- AlmaLinux

---

## Requirements

- Root or sudo privileges
- Bash shell
- `useradd`, `usermod`, and `passwd` utilities

---

## Usage

Make the script executable:

```bash
chmod +x create-linux-user.sh
```

Run the script:

```bash
sudo ./create-linux-user.sh
```

---

## Example Workflow

```text
Enter username: khalid
Enter full name: Khalid Khan
Do you want to give sudo/admin access? (y/n): y
Enter an additional group name (optional): docker
```

---

## Script Location

```text
scripts/linux/create-linux-user/create-linux-user.sh
```

## Useful verification commands
```bash
id <username>
groups <username>
getent passwd <username>
ls -ld /home/<username>
sudo su - <username>
```