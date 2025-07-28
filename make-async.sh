#!/bin/bash

# Ask for sudo upfront
if [ "$EUID" -ne 0 ]
  then echo "Please run as root with sudo."
  exit
fi

# Get the current directory of the script
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Ask for the Proton directory
read -p "Please enter the Proton directory: " protondir

# Ensure the directory exists
if [ ! -d "$protondir" ]; then
  echo "Error: Proton directory not found!"
  exit 1
fi

# Ask for version number
read -p "Please enter the version number (e.g., 10-4): " version_number

# Validate version number is not empty
if [ -z "$version_number" ]; then
  echo "Error: Version number cannot be empty!"
  exit 1
fi

# Create the full version name with async suffix
FULL_VERSION="Proton-Sarek$version_number-async"
echo "Using version: $FULL_VERSION"

# Copy the dxvk-async files
echo "Copying dxvk-async 32-bit files..."
cp -r "$SCRIPT_DIR/patches/dxvk-async/x32/"* "$protondir/files/lib/wine/dxvk/i386-windows/" || { echo "Failed to copy 32-bit dxvk files."; exit 1; }

echo "Copying dxvk-async 64-bit files..."
cp -r "$SCRIPT_DIR/patches/dxvk-async/x64/"* "$protondir/files/lib/wine/dxvk/x86_64-windows/" || { echo "Failed to copy 64-bit dxvk files."; exit 1; }

# Copy the vkd3d-proton-2.6 files
echo "Copying vkd3d-proton-2.6 32-bit files..."
cp -r "$SCRIPT_DIR/patches/vkd3d-proton-2.6/x86/"* "$protondir/files/lib/vkd3d/i386-windows/" || { echo "Failed to copy 32-bit vkd3d-proton files."; exit 1; }

echo "Copying vkd3d-proton-2.6 64-bit files..."
cp -r "$SCRIPT_DIR/patches/vkd3d-proton-2.6/x64/"* "$protondir/files/lib/vkd3d/x86_64-windows/" || { echo "Failed to copy 64-bit vkd3d-proton files."; exit 1; }

# Update the proton file with the new version
echo "Updating proton file with version $FULL_VERSION..."
sed "s/CURRENT_PREFIX_VERSION=\"Proton-Sarek\"/CURRENT_PREFIX_VERSION=\"$FULL_VERSION\"/" "$SCRIPT_DIR/patches/proton" > "$protondir/proton" || { echo "Failed to update proton file."; exit 1; }

# Make the proton file executable
chmod +x "$protondir/proton" || { echo "Failed to make proton file executable."; exit 1; }

# Update the version file with timestamp and version
echo "Creating version file with timestamp..."
TIMESTAMP=$(date +%s)
echo "$TIMESTAMP $FULL_VERSION" > "$protondir/version" || { echo "Failed to create version file."; exit 1; }

# Update the compatibilitytool.vdf file with the new version
echo "Updating compatibilitytool.vdf..."
sed -e "s/\"Proton-Sarek\"/\"$FULL_VERSION\"/g" "$SCRIPT_DIR/patches/compatibilitytool.vdf" > "$protondir/compatibilitytool.vdf" || { echo "Failed to update compatibilitytool.vdf."; exit 1; }

echo "All files copied and updated successfully."
echo "Version: $FULL_VERSION"
echo "Timestamp: $TIMESTAMP"