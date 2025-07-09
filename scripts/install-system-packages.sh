#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/system-packages")

echo "Installing native packages..."
sudo zypper --non-interactive refresh
sudo zypper --non-interactive dup
echo "$PACKAGES" | xargs sudo zypper --non-interactive install
echo "Native packages installed."
