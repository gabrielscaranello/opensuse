#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/system-packages")

echo "Installing native packages..."
sudo zypper --non-interactive refresh
sudo zypper --non-interactive dup
echo "$PACKAGES" | xargs sudo zypper install -y
echo "Native packages installed."
