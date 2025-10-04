#!/bin/bash

# Script to change Ghostty.app icon to custom icon

APP_PATH="/Applications/Ghostty.app"
SOURCE_ICON="$HOME/.dotfiles/excluded_assets/ghostty_alt_icon.png"
TEMP_ICON="/tmp/ghostty_temp.png"

# Check if app exists
if [ ! -d "$APP_PATH" ]; then
    echo "Error: Ghostty.app not found at $APP_PATH"
    exit 1
fi

# Check if source icon exists
if [ ! -f "$SOURCE_ICON" ]; then
    echo "Error: Source icon not found at $SOURCE_ICON"
    exit 1
fi

# Copy icon to temp location and add icon resource to it
cp "$SOURCE_ICON" "$TEMP_ICON"
sips -i "$TEMP_ICON" > /dev/null 2>&1

# Extract the icon resource and apply it to the app
DeRez -only icns "$TEMP_ICON" > /tmp/icon.rsrc
sudo Rez -append /tmp/icon.rsrc -o $''"$APP_PATH"$'/Icon\r'
sudo SetFile -a C "$APP_PATH"

# Cleanup
rm "$TEMP_ICON"
rm /tmp/icon.rsrc

echo "✓ Ghostty icon updated successfully!"
