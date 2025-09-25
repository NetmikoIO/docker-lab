# Docker Lab Environment

This repository contains a **Dockerfile** to build a complete Ubuntu 24.04-based lab environment for networking, system administration, and database practice.

---

## Features

- **Base OS:** Ubuntu 24.04
- **User:** `netmiko` with sudo privileges
- **Networking tools:** `net-tools`, `iproute2`, `iputils-ping`, `dnsutils`, `tcpdump`, `nmap`, `traceroute`, `iperf3`
- **Web & Database:** `nginx`, `mariadb-server`, `mariadb-client`
- **Development tools:** `vim`, `git`, `curl`, `wget`, `python3`, `python3-pip`
- **SSH:** `openssh-client` and `openssh-server`

---

## Usage

1. **Build the Docker image:**

```bash
docker build -t docker-lab:latest .
```

2. **Run a container interactively:**
```bash
docker run -it -p 80:80 -p 3306:3306 -p 22:22 docker-lab:latest
```
You will start as the netmiko user in /home/netmiko.

Exposed Ports
- 80 → Nginx web server

- 3306 → MariaDB server

- 22 → SSH server

Notes
Designed for learning and practicing networking, databases, and system administration inside Docker containers.

The container is lightweight and comes with essential tools for a homelab environment.

Author
NetmikoIO
GitHub