#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root with sudo."
  exit
fi

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

read -p "Please enter the Proton directory: " protondir

if [ ! -d "$protondir" ]; then
  echo "Error: Proton directory not found!"
  exit 1
fi

read -p "Please enter the version number (e.g., 10-4): " version_number

if [ -z "$version_number" ]; then
  echo "Error: Version number cannot be empty!"
  exit 1
fi

FULL_VERSION="Proton-Sarek$version_number"
echo "Using version: $FULL_VERSION"

echo "Copying dxvk 32-bit files..."
cp -r "$SCRIPT_DIR/patches/dxvk/x32/"* "$protondir/files/lib/wine/dxvk/i386-windows/" || { echo "Failed to copy 32-bit dxvk files."; exit 1; }

echo "Copying dxvk 64-bit files..."
cp -r "$SCRIPT_DIR/patches/dxvk/x64/"* "$protondir/files/lib/wine/dxvk/x86_64-windows/" || { echo "Failed to copy 64-bit dxvk files."; exit 1; }

echo "Updating proton file with version $FULL_VERSION..."
sed "s/CURRENT_PREFIX_VERSION=\"Proton-Sarek\"/CURRENT_PREFIX_VERSION=\"$FULL_VERSION\"/" "$SCRIPT_DIR/patches/proton" > "$protondir/proton" || { echo "Failed to update proton file."; exit 1; }

chmod +x "$protondir/proton" || { echo "Failed to make proton file executable."; exit 1; }

echo "Creating version file with timestamp..."
TIMESTAMP=$(date +%s)
echo "$TIMESTAMP $FULL_VERSION" > "$protondir/version" || { echo "Failed to create version file."; exit 1; }

echo "Updating compatibilitytool.vdf..."
sed -e "s/\"Proton-Sarek\"/\"$FULL_VERSION\"/g" "$SCRIPT_DIR/patches/compatibilitytool.vdf" > "$protondir/compatibilitytool.vdf" || { echo "Failed to update compatibilitytool.vdf."; exit 1; }

echo "All files copied and updated successfully."
echo "Version: $FULL_VERSION"
echo "Timestamp: $TIMESTAMP"
