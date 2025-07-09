#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/flatpak-packages")

echo "Installing flatpak packages..."
echo "Enabling Flathub..."
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak override --filesystem=/usr/share/fonts

echo "Installing packages..."
echo "$PACKAGES" | xargs sudo flatpak install flathub -y
echo "Flatpak packages installed."
