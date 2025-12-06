#! /bin/bash

echo "Adding Kernel Repo"
sudo zypper ar -f https://download.opensuse.org/repositories/Kernel:/stable/standard Kernel:stable
sudo zypper refresh

echo "Installing Kernel"
sudo zypper in -y --from Kernel:stable kernel-default
