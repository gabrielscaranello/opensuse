PWD=$(pwd)
VERSION=$(curl -s https://api.github.com/repos/ful1e5/Bibata_Cursor/releases/latest | grep "tag_name" | cut -d '"' -f 4)
CURSOR_NAME="Bibata-Modern-Ice"
FILE_NAME="$CURSOR_NAME.tar.xz"
OUTPUT_DIR="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://github.com/ful1e5/Bibata_Cursor/releases/download/$VERSION/$FILE_NAME"
EXTRACT_DIR="/tmp"
TARGET_DIR="/usr/share/icons"

echo "Installing Bibata cursor..."

# Remove old file
if [ -d "$TARGET_DIR/default" ] && [ -L "$TARGET_DIR/default/cursors" ]; then unlink "$TARGET_DIR/cursors"; fi
sudo rm -rf $OUTPUT_DIR "$TARGET_DIR/$CURSOR_NAME" "$TARGET_DIR/default"

# Download file
wget -c "$DOWNLOAD_URL" -O $OUTPUT_DIR

# Extract file
tar -xf $OUTPUT_DIR -C $EXTRACT_DIR

# Move file
sudo mkdir -p "$TARGET_DIR"
sudo mv "$EXTRACT_DIR/$CURSOR_NAME" "$TARGET_DIR"

# Set cursor
gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_NAME"
sudo cp -r "$PWD/plasma/icons/default" "$TARGET_DIR"
sudo ln -sf "$TARGET_DIR/$CURSOR_NAME/cursors" "$TARGET_DIR/default/cursors"

echo "Bibata cursor installed"
