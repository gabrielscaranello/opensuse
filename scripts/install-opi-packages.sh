#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/opi-packages")

echo "Installing opi packages..."
sudo zypper --non-interactive refresh
sudo zypper --non-interactive dup
for package in $PACKAGES; do
  sudo opi -n "${package}"
done

echo "opi packages installed."
