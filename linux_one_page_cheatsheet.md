# 🧾 Linux Ubuntu vs RHEL – 1 Page Cheat Sheet

## 📁 Files & Navigation
| Task | Ubuntu | RHEL |
|------|--------|------|
| List | ls | ls |
| Change dir | cd /path | cd /path |
| Current dir | pwd | pwd |
| Create dir | mkdir dir | mkdir dir |
| Delete | rm -r file/dir | rm -r file/dir |
| Copy | cp src dest | cp src dest |
| Move | mv src dest | mv src dest |

## 📦 Package Mgmt
| Task | Ubuntu | RHEL |
|------|--------|------|
| Update | apt update | dnf check-update |
| Upgrade | apt upgrade | dnf update |
| Install | apt install pkg | dnf install pkg |
| Remove | apt remove pkg | dnf remove pkg |

## ⚙️ System
| Task | Ubuntu | RHEL |
|------|--------|------|
| Processes | ps aux | ps aux |
| Monitor | top | top |
| Disk | df -h | df -h |
| Memory | free -h | free -h |
| Reboot | reboot | reboot |

## 👤 Users
| Task | Ubuntu | RHEL |
|------|--------|------|
| Add user | adduser user | useradd user |
| Delete | userdel user | userdel user |
| Password | passwd user | passwd user |
| Permissions | chmod 755 file | chmod 755 file |

## 🌐 Network
| Task | Ubuntu | RHEL |
|------|--------|------|
| IP | ip a | ip a |
| Ping | ping host | ping host |
| Ports | ss -tuln | ss -tuln |

## 🔧 Services
| Task | Ubuntu | RHEL |
|------|--------|------|
| Start | systemctl start svc | same |
| Stop | systemctl stop svc | same |
| Status | systemctl status svc | same |
| Enable | systemctl enable svc | same |

## 📜 Logs
| Task | Ubuntu | RHEL |
|------|--------|------|
| Logs | journalctl -xe | same |
| Service logs | journalctl -u svc | same |

## 💾 Disk
| Task | Ubuntu | RHEL |
|------|--------|------|
| Disks | lsblk | lsblk |
| Mount | mount /dev/sdX /mnt | same |
| Usage | du -sh * | same |

## ⚡ Process
| Task | Ubuntu | RHEL |
|------|--------|------|
| Kill | kill PID | kill PID |
| Force | kill -9 PID | kill -9 PID |

## 📦 Archive
| Task | Ubuntu | RHEL |
|------|--------|------|
| Compress | tar -czvf file.tar.gz dir | same |
| Extract | tar -xzvf file.tar.gz | same |

## 🔍 Search
| Task | Ubuntu | RHEL |
|------|--------|------|
| Find | find / -name file | same |
| Grep | grep "text" file | same |

---
✅ Tip: Ubuntu uses APT, RHEL uses DNF/YUM. Most other commands are identical.
