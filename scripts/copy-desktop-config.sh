#! /bin/bash

PWD=$(pwd)

echo "Copying..."
dconf load / <"${PWD}/config/dconf"

echo "Copying..."
cp "$PWD"/config/mimeapps.list ~/.config/mimeapps.list

mkdir -p "$HOME"/.icons
cp "$PWD"/assets/logo-menu.svg "$HOME"/.icons/logo-menu.svg

echo "Desktop config setup done."
