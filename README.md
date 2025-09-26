# Docker Lab - Ubuntu 24.04

A personal lab environment built with Docker for networking, development, and database practice.

## Overview

This Docker image provides a lightweight Ubuntu 24.04 environment with essential tools for networking, database, and system administration. It is designed for hands-on experimentation in a safe containerized setup.

## Features

- **Base OS:** Ubuntu 24.04
- **User:** `netmiko` with sudo privileges
- **Root access** available inside the container
- **Installed tools:**
  - Networking: `net-tools`, `iproute2`, `iputils-ping`, `dnsutils`, `tcpdump`, `nmap`, `traceroute`, `iperf3`
  - Database: `mariadb-server`, `mariadb-client`
  - Web server: `nginx`
  - Development: `python3`, `python3-pip`, `vim`, `git`, `curl`, `wget`
  - SSH: `openssh-client`, `openssh-server`
  
- **Exposed ports for testing:**
  - `80` → Nginx web server
  - `3306` → MariaDB
  - `22` → SSH

## Usage

### Build the Docker image
```bash
docker build -t docker-lab:latest .
```
Run the container
```bash
docker run -it -p 8080:80 -p 3306:3306 -p 2222:22 --name lab-container docker-lab:latest
```
Access container as root
```bash
docker exec -it -u root lab-container 
```

Access container as netmiko
```bash
docker exec -it -u netmiko lab-container bash
```

## Notes
All changes are ephemeral unless committed to a Docker volume or rebuilt into the image.

Designed for safe lab experimentation; do not expose sensitive services to public networks.

Ideal for learning Docker, networking, databases, and Linux system administration.

License
MIT License
