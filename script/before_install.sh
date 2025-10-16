#!/bin/bash
set -e

echo "=== BeforeInstall: Cleaning old files and updating packages ==="

# Stop existing app (if running)
sudo systemctl stop nginx || true

# Remove old files (optional)
sudo rm -rf /var/www/html/*

# Update and install required packages
sudo apt-get update -y
sudo apt-get install -y nginx unzip

echo "=== BeforeInstall completed successfully ==="
