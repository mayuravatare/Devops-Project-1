#!/bin/bash
set -e

echo "=== ValidateService: Checking web service health ==="

# Test if Nginx is active
if systemctl is-active --quiet nginx; then
  echo "Nginx is running successfully."
  exit 0
else
  echo "Nginx is NOT running!"
  exit 1
fi
