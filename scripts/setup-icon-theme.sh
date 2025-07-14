#! /bin/bash

echo "Setting up Icon Theme..."

echo "Defining Icon Theme..."
papirus-folders -C adwaita
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

echo "Copy icons folder"
mkdir -p ~/.icons
rsync -av "${PWD}/assets/icons/" ~/.icons
echo "Icons copied."

echo "Setting custom icon to Logo-menu..."
dconf write /org/gnome/shell/extensions/Logo-menu/custom-icon-path "'$HOME/.icons/misc/logo-menu.svg'"
dconf write /org/gnome/shell/extensions/Logo-menu/use-custom-icon true
dconf write /org/gnome/shell/extensions/Logo-menu/menu-button-icon-size 32
echo "Icon set to Logo-menu."

echo "Icon Theme setup done."
