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

# Copy the dxvk-async-1.10.3 files
echo "Copying dxvk-async-1.10.3 32-bit files..."
cp -r "$SCRIPT_DIR/dxvk-async-1.10.3/x32/"* "$protondir/files/lib/wine/dxvk/" || { echo "Failed to copy 32-bit dxvk files."; exit 1; }

echo "Copying dxvk-async-1.10.3 64-bit files..."
cp -r "$SCRIPT_DIR/dxvk-async-1.10.3/x64/"* "$protondir/files/lib64/wine/dxvk/" || { echo "Failed to copy 64-bit dxvk files."; exit 1; }

# Copy the vkd3d-proton-2.6 files
echo "Copying vkd3d-proton-2.6 32-bit files..."
cp -r "$SCRIPT_DIR/vkd3d-proton-2.6/x86/"* "$protondir/files/lib/wine/vkd3d-proton/" || { echo "Failed to copy 32-bit vkd3d-proton files."; exit 1; }

echo "Copying vkd3d-proton-2.6 64-bit files..."
cp -r "$SCRIPT_DIR/vkd3d-proton-2.6/x64/"* "$protondir/files/lib64/wine/vkd3d-proton/" || { echo "Failed to copy 64-bit vkd3d-proton files."; exit 1; }

# Copy the Proton and compatibilitytool files
echo "Copying proton file..."
cp "$SCRIPT_DIR/proton" "$protondir/" || { echo "Failed to copy proton file."; exit 1; }

echo "Copying compatibilitytool.vdf..."
cp "$SCRIPT_DIR/compatibilitytool.vdf" "$protondir/" || { echo "Failed to copy compatibilitytool.vdf."; exit 1; }

echo "All files copied successfully."
