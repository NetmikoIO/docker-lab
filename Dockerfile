# Base Ubuntu 24.04
FROM ubuntu:24.04

# Evitar preguntas durante instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar e instalar herramientas básicas y de red
RUN apt update && apt install -y \
    sudo \
    curl \
    wget \
    git \
    vim \
    net-tools \
    iproute2 \
    iputils-ping \
    dnsutils \
    tcpdump \
    nmap \
    traceroute \
    iperf3 \
    mariadb-client \
    mariadb-server \
    nginx \
    python3 \
    python3-pip \
    openssh-client \
    openssh-server \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# Crear usuario netmiko sin contraseña y con permisos sudo
RUN useradd -ms /bin/bash netmiko \
    && usermod -aG sudo netmiko \
    && echo "netmiko ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Cambiar al usuario netmiko
USER netmiko
WORKDIR /home/netmiko

# Exponer puertos útiles para pruebas
EXPOSE 80 3306 22

# Comando por defecto al iniciar
CMD ["bash"]

