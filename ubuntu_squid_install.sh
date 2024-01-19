#!/bin/bash

# Update package lists
sudo apt update -y

# Install Squid
sudo apt install -y squid

# Download Squid configuration file
sudo wget -O /etc/squid/squid.conf 'https://github.com/i99940x/ubuntu_squid_install/blob/main/squid.conf'

# Install UFW
sudo apt install -y ufw

# Allow port 9999
sudo ufw allow 9999

# Enable UFW
echo "y" | sudo ufw enable

# Check UFW status
sudo ufw status

# Reboot the system
sudo reboot
