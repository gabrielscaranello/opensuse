#! /bin/bash

PWD=$(pwd)
TARGET="/usr/share/wallpapers/user"

echo "Setting up Wallpaper..."

echo "Copying wallpaper..."
sudo mkdir -p "$TARGET"
sudo cp "${PWD}/assets/wallpaper.jpg" "$TARGET/user-default.jpg"
