# Scripts

This folder contains reusable automation scripts for Linux, DevOps, Docker, Kubernetes, and CI/CD tasks.

---

## Structure

| Folder | Purpose |
|--------|---------|
| `linux/` | Linux user and system administration scripts |
| `docker/` | Docker automation and container management scripts |
| `kubernetes/` | Kubernetes deployment and cluster management scripts |
| `github-actions/` | CI/CD workflow and GitHub Actions scripts |
| `monitoring/` | Monitoring and observability scripts |
| `networking/` | Networking and connectivity scripts |
| `automation/` | General automation utilities |

---

## Available Scripts

| Script | Description |
|--------|-------------|
| `linux/create-linux-user/create-linux-user.sh` | Cross-platform Linux user creation script |
| `linux/delete-linux-user/delete-linux-user.sh` | Linux user deletion script |

---

## Usage

Go to the desired script folder:

```bash
cd scripts/linux/create-linux-user
```

Make the script executable:

```bash
chmod +x create-linux-user.sh
```

Run the script:

```bash
./create-linux-user.sh
```