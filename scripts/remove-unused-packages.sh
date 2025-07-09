#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/unused-packages")

echo "Removing unused packages..."
sudo zypper --non-interactive refresh
echo "$PACKAGES" | xargs sudo zypper --non-interactive remove -u
echo "$PACKAGES" | xargs sudo zypper addlock
sudo zypper clean --all
echo "Unused packages removed."
