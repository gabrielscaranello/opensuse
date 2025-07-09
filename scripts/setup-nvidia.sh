#! /bin/bash

echo "Setting up Nvidia..."

echo "Enable repository..."
sudo zypper --non-interactive install openSUSE-repos-Tumbleweed-NVIDIA
sudo zypper --non-interactive refresh

echo "Installing Nvidia drivers..."
sudo zypper --non-interactive install-new-recommends

echo "Installing nvidia-settings..."
sudo zypper --non-interactive install nvidia-settings

echo "Nvidia setup completed."
