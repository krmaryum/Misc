# Linux Scripts

Reusable Linux administration scripts.

## create-linux-user.sh

Creates a Linux user across Ubuntu, Debian, Fedora, CentOS, Rocky Linux, AlmaLinux, and WSL.

### Features

- Creates a new user
- Creates home directory
- Sets `/bin/bash` as default shell
- Adds user information
- Sets password
- Adds user to `sudo` or `wheel` group

### Run

```bash
chmod +x create-linux-user.sh
sudo ./create-linux-user.sh
```
### Verify

```bash
cat /etc/passwd | grep username
groups username
ls -ld /home/username
```
