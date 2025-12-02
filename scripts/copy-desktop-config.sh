#! /bin/bash

PWD=$(pwd)
echo "Copying desktop config..."
rsync -a "$PWD/plasma/config/" "$HOME/.config/"

echo "Copying..."
cp "$PWD"/config/mimeapps.list ~/.config/mimeapps.list

echo "Desktop config setup done."
